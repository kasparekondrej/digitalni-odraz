#!/usr/bin/env bash
# Hledá v přidaných řádcích vzory citlivých údajů podle pravidla pravidla/citlive-informace.md.
# Použití:
#   nastroje/kontrola-citlivych.sh staged   kontrola připraveného commitu (git pre-commit hook)
#   nastroje/kontrola-citlivych.sh claude   Claude Code hook před příkazem Bash; blokuje git commit a git push
# Návratový kód 0 = v pořádku, 1 (staged) nebo 2 (claude) = nalezeno, commit se zastaví.
set -u
cd "$(git rev-parse --show-toplevel)" || exit 0
mode="${1:-staged}"

if [ "$mode" = "claude" ]; then
  cmd="$(python3 -c 'import json,sys; print(json.load(sys.stdin).get("tool_input",{}).get("command",""))' 2>/dev/null)"
  case "$cmd" in
    *"git commit"*|*"git push"*) ;;
    *) exit 0 ;;
  esac
fi

# Soubory, které o citlivých věcech mluví jako o pravidlech, a tento skript se nekontrolují.
vynechat=':(exclude)pravidla/citlive-informace.md'
vynechat2=':(exclude)nastroje/kontrola-citlivych.sh'

if [ "$mode" = "claude" ]; then
  # Necommitnuté změny i to, co už je v lokálních commitech a není na serveru.
  base="$(git rev-parse --verify -q '@{upstream}' || git rev-parse --verify -q origin/main || echo HEAD)"
  pridane="$(git diff "$base" -U0 -- . "$vynechat" "$vynechat2" | grep '^+' | grep -v '^+++')"
  for f in $(git ls-files --others --exclude-standard); do
    case "$f" in pravidla/citlive-informace.md|nastroje/kontrola-citlivych.sh) continue ;; esac
    pridane="$pridane"$'\n'"$(sed "s|^|+$f: |" "$f" 2>/dev/null)"
  done
else
  pridane="$(git diff --cached -U0 -- . "$vynechat" "$vynechat2" | grep '^+' | grep -v '^+++')"
fi

vzory=(
  '[0-9][0-9 ]*(Kč|,-) *(/|za) *(h|hod)'
  '(sazb|odměn|plat|mzd)[[:alpha:]]* *(je|činí|:|=)? *[0-9]'
  '[0-9]+ *% *(ze zisku|z provize|podíl)'
  'podíl[[:alpha:]]* ze zisku *[0-9]'
  '(api[_-]?key|secret|token|heslo)[[:alpha:]]* *[:=] *[^ ]{12,}'
  'sk-[A-Za-z0-9_-]{20,}'
  'gh[pousr]_[A-Za-z0-9]{30,}'
)

nalezeno=""
for v in "${vzory[@]}"; do
  shoda="$(printf '%s\n' "$pridane" | grep -inE -- "$v" | head -5)"
  [ -n "$shoda" ] && nalezeno="$nalezeno$shoda"$'\n'
done

if [ -n "$nalezeno" ]; then
  {
    echo "Kontrola citlivých údajů: v přidaných řádcích je něco, co vypadá jako sazba, odměna, podíl nebo klíč."
    echo "Repozitář je veřejný. Nahraď údaj odkazem na profil (viz pravidla/citlive-informace.md)."
    echo "Nalezené řádky:"
    printf '%s' "$nalezeno" | cut -c1-200
    echo "Když jde o planý poplach, Ondřej může commit pustit ručně přes git commit --no-verify."
  } >&2
  [ "$mode" = "claude" ] && exit 2
  exit 1
fi
exit 0
