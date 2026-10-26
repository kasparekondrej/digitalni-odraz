# Kontrolor reportů

První specializovaný agent pod odrazem. Zkontroluje klientský report reklamní kampaně podle interního standardu Optimia dřív, než odejde klientovi. Odraz jeho výstup schválí Ondřejovými pravidly a Ondřejovi pošle jen výjimky.

Stav: návrh zadání ke schválení. Agent zatím neběží.

## Proč první

Standard už existuje ([Jak psát report reklamní kampaně](https://docs.google.com/document/d/1uXYq3s0eFjPgkCF4XE7HkX_X1rHQU7WrMwiIfGf9nOg/edit), září 2026) a má hotový checklist před odesláním. Výsledek se dá snadno ověřit: report buď bod splňuje, nebo ne.

## Jak bude pracovat

1. Specialista nebo account dá report ke kontrole (odkaz na Google Slides, Docs nebo PDF).
2. Kontrolor projde report podle [standard.md](standard.md) a vrátí tabulku: bod checklistu, splněno / nesplněno / nejde ověřit, kde v reportu, návrh opravy.
3. Odraz výstup projde Ondřejovými pravidly. Běžné nedostatky vrací rovnou autorovi jako návrh. Ondřejovi eskaluje jen výjimky (viz níže).
4. Kontrolor nic neopravuje v samotném reportu a nic neposílá klientovi.

## Kdy jde report Ondřejovi

- Kampaň nesplnila primární KPI a report to neříká na první stránce.
- Podezřelá čísla v kvalitě doručení (extrémní CTR, koncentrace na málo známých webech) jsou prezentovaná jako úspěch.
- Rozpočet je přečerpaný nebo nedočerpaný o víc než [doplnit] % bez vysvětlení.
- Doporučení mění rozpočet nebo přidává nový kanál.

## Otevřené otázky pro Ondřeje

- Kudy budou reporty přicházet: odkaz ve Slacku, úkol v Teamworku, nebo složka na Drive?
- Komu kontrolor výsledek vrací: autorovi reportu, nebo nejdřív jen Ondřejovi (doporučuju na první měsíc jen Ondřejovi)?
- Práh pro rozpočet: od jaké odchylky plánu a skutečnosti chce Ondřej report vidět?
- Na kterých 3 až 5 starších reportech ho otestujeme naslepo?
