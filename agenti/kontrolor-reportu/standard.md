# Standard reportu: co kontrolor ověřuje

Výtah z interního standardu [Jak psát report reklamní kampaně](https://docs.google.com/document/d/1uXYq3s0eFjPgkCF4XE7HkX_X1rHQU7WrMwiIfGf9nOg/edit). Když se standard na Drive změní, uprav i tento soubor.

## Zlaté pravidlo

Klient čísla vidí v tabulce. Komentář říká, co znamenají a co s tím uděláme. Věta, která jen převádí číslo z tabulky do slov, je chyba.

Report odpovídá v tomto pořadí: splnili jsme cíl, proč, co jsme během kampaně udělali, co doporučujeme dál.

## Checklist před odesláním

| # | Bod | Jak ověřit |
|---|---|---|
| 1 | První stránka sama odpoví: splnili jsme cíl, proč, co doporučujeme | Shrnutí má verdikt v jedné větě, hlavní důvody a doporučení |
| 2 | Každé KPI má cílovou hodnotu a srovnání | Plán, minulá kampaň nebo benchmark se zdrojem |
| 3 | Rozpočet plán vs. skutečnost, rozdíl vysvětlený | |
| 4 | Žádná věta jen nepřepisuje číslo z tabulky | Test „No a co?“ u každé věty komentáře |
| 5 | Každá příčina je doložená, nebo označená jako hypotéza | „Způsobila“ jen u doloženého, jinak „pravděpodobně“ a jak ověříme |
| 6 | Srovnává se srovnatelné, rozdíly v podmínkách jsou uvedené | Sezóna, nabídka, rozpočet, cílení |
| 7 | Metriky mimo KPI mají důvod, proč tam jsou | |
| 8 | Kvalita doručení zkontrolovaná, podezřelá čísla prověřená | Viditelnost, frekvence, brand safety, podezřelé CTR |
| 9 | Optimalizace během kampaně popsané i s efektem | |
| 10 | Každé doporučení má konkrétní krok a očekávaný dopad | Sloveso + objekt + důvod |
| 11 | Čísla v textu sedí s tabulkami, součty sedí | |
| 12 | Interní názvy přeložené, tabulky seřazené podle cílové metriky a probarvené | |
| 13 | Vizuál na titulce odpovídá klientovi | Ne fotobanka |
| 14 | Smazané interní poznámky a návody | Hledej „SMAZAT“, komentáře, interní zkratky |
| 15 | Report četl druhý člověk, který kampaň nedělal | Kontrolor ověřit nemůže, jen připomene |

## Pravidla psaní komentáře

- Odstavec jde v pořadí Zjištění, Příčina, Dopad, Akce.
- Začít verdiktem, detaily pod ním.
- Negativa neschovávat: co se stalo, proč, co už děláme.
- Psát pro klienta: bez interních zkratek a názvů line itemů, odbornou metriku jednou vysvětlit.
- Věty do 25 slov, odstavec nejvýš 3-4 věty, tučně nejvýš 1-2 fráze na odstavec.

## Metriky

- Hierarchie: byznysový výsledek, primární KPI, sekundární KPI, diagnostické metriky.
- KPI odpovídá fázi: SEE zásah a viditelná zobrazení, THINK návštěvy a CPC, DO konverze, CPA, ROAS.
- Zdroj konverzí a atribuční model uvedené. Čísla z platforem se nesčítají.
- Brandová kampaň se nehodnotí jen přes CPC a CPA.

## Co nesmí chybět podle systému

| Systém | Analýza musí obsahovat |
|---|---|
| RTB / DV360 | Umístění (top a vyloučená), viditelnost, frekvence, podezřelý provoz, publika, formáty |
| Google Ads Search | Hledané výrazy, podíl zobrazení a ztráta kvůli rozpočtu vs. hodnocení, brand a non-brand zvlášť |
| Google Ads PMax / Shopping | Produkty a skupiny produktů, rozpad kanálů, ROAS vs. marže, kvalita feedu |
| Sklik | Jako Search, obsahová síť zvlášť, rozdíl vůči Google Ads |
| Meta | Únava kreativ, fáze učení, publika, umístění, modelované konverze |
| Retail media | Prodeje a ROAS z dat retaileru, noví zákazníci, halo efekt |
| Kombinovaná kampaň | Role každého kanálu, celkový výsledek v GA4 nebo CRM |
