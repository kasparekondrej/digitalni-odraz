---
name: google-ads-hledane-vyrazy
description: Projde přehled hledaných výrazů z účtu Google Ads (Search) a navrhne specialistovi vylučující slova s důvodem. Použij u týdenní kontroly hledaných výrazů pilotních účtů Optimia. Nic v účtu nemění.
---

# Google Ads agent: hledané výrazy

Návrh první verze z 5. 11. 2026, čeká na rozhodnutí Ondřeje (pilotní účty, zdroj dat). Mandát: [pravidla/mandat.md](../../pravidla/mandat.md). Agent jen navrhuje.

## Vstup

1. Pilotní účty a specialistu určuje Ondřej. Seznam je v Claude Docu agenta, ne tady.
2. Data: export přehledu hledaných výrazů za posledních 7 dní (a pro srovnání 30 dní) uložený specialistou do složky klienta na Drive, nebo connector jen pro čtení, až ho Ondřej schválí. Když export chybí nebo je starší než 8 dní, zapiš „data chybí“ a nic nenavrhuj.
3. Kontext klienta: poslední report na Drive (cíle, primární KPI, brand), opakovaný PPC úkol v Teamworku (kdo účet vede).

## Postup

1. Rozděl výrazy na brand a non-brand. Brandové výrazy nikdy nenavrhuj k vyloučení.
2. Najdi výrazy s náklady a bez konverzí za 30 dní. U každého uveď kliknutí, náklady a konverze z exportu. Nic nedopočítávej.
3. Vynech výrazy, které mají konverzi v jiném období nebo se blíží konverznímu výrazu jen jiným tvarem slova. Ty označ „ověřit“.
4. Navrhni vylučující slovo nebo frázi, typ shody a úroveň (kampaň, sestava, seznam). Důvod jednou větou ve tvaru Zjištění, Příčina, Dopad, Akce.
5. Když konverze v celém účtu klesly k nule nebo náklady za týden výrazně vybočují z plánu, nenavrhuj nic a zapiš výjimku pro Ondřeje.

## Výstup

Řádek do Claude Docu agenta: účet, specialista, období, počet návrhů, souhrn nákladů dotčených výrazů (jen z exportu), tabulka návrhů, výjimky. Pro specialistu krátká zpráva Ondřejovým hlasem, odejde až po Ondřejově „pošli“.

## Hranice

- V Google Ads nic neměň, ani vylučující slovo.
- Nepiš klientovi a nenavrhuj zvýšení rozpočtu jako hotovou věc.
- Do repozitáře nepiš názvy klientů, čísla z účtů ani obchodní podmínky.
- Chybějící údaj označ [doplnit].

Piš česky s diakritikou, věcně, bez dlouhých pomlček.
