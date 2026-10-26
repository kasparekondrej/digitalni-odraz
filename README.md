# Digitální odraz

Agent, který myslí a píše jako Ondřej Kašpárek, Head of Digital v Optimiu. Repozitář je jeho jediný verzovaný domov: pravidla, skilly, prompty naplánovaných úloh a agenti, kteří pod odrazem pracují.

## Struktura

| Složka | Obsah |
|---|---|
| [pravidla/](pravidla/) | Mandát (co odraz smí a nesmí) a pravidla pro citlivé informace |
| [skills/](skills/) | Skilly odrazu. Vstupem je [odraz-hlavni-agent](skills/odraz-hlavni-agent/SKILL.md), který úlohu předá správnému skillu |
| [ulohy/](ulohy/) | Přesné znění promptů naplánovaných úloh a jejich rozvrh |
| [agenti/](agenti/) | Specializovaní agenti pod odrazem. První je [Kontrolor reportů](agenti/kontrolor-reportu/) |

## Živé dokumenty mimo repozitář

- Profil role: https://claude.ai/artifact/VN8a4nmWe26uY9gCRdTMiJ. Sekce „Změny v rozhodnutích“ má přednost před vším v repozitáři, protože se do ní denně zapisují Ondřejovy opravy.
- Plán do ledna 2027: https://claude.ai/artifact/PGjCpcVaW3eC78xwZuHCMd.

## Jak se tu mění věci

1. Změna (nové pravidlo, úprava skillu, prompt) se navrhne jako pull request.
2. Ondřej ji přečte a sloučí, nebo vrátí s poznámkou.
3. Po sloučení se změna promítne tam, kde běží: uložený skill v claude.ai nebo nastavení naplánované úlohy.

Skilly v claude.ai a prompty úloh se zatím synchronizují ručně. Zdrojem pravdy je to, co je sloučené v `main`.

## Fáze plánu

| Fáze | Kdy | Stav |
|---|---|---|
| 1. Měření | 23. 10.-6. 11. 2026 | Běží, první týdenní skóre 26. 10. |
| 2. Odborné know-how | listopad | Skill medialni-strategie hotový, chybí test naslepo a benchmarky |
| 3. Stupňovaná autonomie | prosinec | Jen se souhlasem po kategoriích |
| 4. První agent pod odrazem | listopad | Kontrolor reportů, zadání v tomto repozitáři |
| 5. Vyhodnocení | leden 2027 | |
