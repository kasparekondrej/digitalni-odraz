# Kontrolor reportů

První specializovaný agent pod odrazem. Zkontroluje klientský report reklamní kampaně podle interního standardu Optimia dřív, než odejde klientovi. Odraz jeho výstup schválí Ondřejovými pravidly a Ondřejovi pošle jen výjimky.

Stav: návrh zadání ke schválení. Agent zatím neběží.

## Proč první

Standard už existuje ([Jak psát report reklamní kampaně](https://docs.google.com/document/d/1uXYq3s0eFjPgkCF4XE7HkX_X1rHQU7WrMwiIfGf9nOg/edit), září 2026) a má hotový checklist před odesláním. Výsledek se dá snadno ověřit: report buď bod splňuje, nebo ne.

## Jak najde reporty

Kontrolor nečeká, až mu někdo report pošle. Dohledá si ho sám, tak jak reporty v Optimiu na začátku měsíce vznikají:

1. **Teamwork.** Každý měsíc vznikají opakované úkoly na report, typicky s termínem 4.-11. dne v měsíci. Názvy: „Report za minulý měsíc“, „Tvorba reportu“, „<klient> | <kanál> | report“, „<klient> - <kanál> - Tvorba reportu + doplnění tabulky“. V září 2026 jich bylo přes 200 napříč týmy.
2. **Hotový úkol = hotový report.** Kontrolor bere úkoly, které byly od jeho posledního běhu označené jako dokončené.
3. **Drive.** Popis úkolu obsahuje odkaz na složku klienta na Drive (například „Prezku k doplnění pravidelného reportu najdeš vždy ...“). Ve složce vezme nejnovější prezentaci nebo PDF s názvem typu „<Klient> report 9/2026“.
4. Když úkol odkaz nemá, hledá na Drive soubor s názvem klienta, slovem „report“ a měsícem. Když nic nenajde, zapíše „report nenalezen“ a nehádá.

### Které reporty

Jen týmy, které vede Ondřej: Social, Content, Grafika, PPC a RTB/DV360 (včetně YouTube). SEO/UX, analytiku, e-mailing a srovnávače zatím nekontroluje, ty mají své vlastníky.

## Jak bude pracovat

1. Běží každý pracovní den od 1. do 20. dne v měsíci, první ostrý běh v listopadu 2026 (reporty za říjen).
2. Ke každému nalezenému reportu projde [standard.md](standard.md) a vrátí řádek: klient, kanál, autor, odkaz na úkol a soubor, verdikt, počet nesplněných bodů, nejdůležitější oprava.
3. Výsledky zapisuje do jednoho Claude Docu za měsíc („Kontrolor reportů 10/2026“). Ke každému reportu připraví komentář pro autora Ondřejovým hlasem.
4. Komentář jde do Teamwork úkolu na report, Ondřejovým jménem (připojený účet je jeho), se zmínkou autora (řešitel úkolu). Accounta projektu (vlastník projektu v Teamworku) přidá jen tam, kde to Ondřej určí.
5. Kontrolor nic neopravuje v samotném reportu a nic neposílá klientovi.

## Odesílání komentářů

Podle rozhodnutí Ondřeje z 26. 10. 2026 (viz [mandát](../../pravidla/mandat.md)). Do rozhodnutí platí: komentář se v Teamworku objeví až po Ondřejově souhlasu v ranním přehledu. Reporty s verdiktem „potřebuje Ondřeje“ jdou vždy nejdřív jemu.

Komentář: oslovení autora zdrobnělinou, co je v reportu dobře (jedna věta), nejvýš 5 konkrétních oprav se slidem, termín „před odesláním klientovi“, podpis „O.“. Kritika vždy s návrhem řešení.

## Kdy jde report Ondřejovi

- Kampaň nesplnila primární KPI a report to neříká na první stránce.
- Podezřelá čísla v kvalitě doručení (extrémní CTR, koncentrace na málo známých webech) jsou prezentovaná jako úspěch.
- Rozpočet je přečerpaný nebo nedočerpaný o víc než 10 % (výchozí, potvrdí Ondřej) bez vysvětlení.
- Doporučení mění rozpočet nebo přidává nový kanál.

## Otevřené otázky pro Ondřeje

- U kterých projektů přidávat do komentáře i accounta?
- Práh pro rozpočet: od jaké odchylky plánu a skutečnosti chce Ondřej report vidět? Výchozí nastavení: 10 %.
- Test naslepo: na zářijových reportech TT Green Life (Social), Artemia a Ambitent (DV360 brand). Ondřej potvrdí, jestli kontrolor trefil to, co by vytkl on.
- Srovnávače: patří pod PPC, nebo je kontrolor má vynechat?
