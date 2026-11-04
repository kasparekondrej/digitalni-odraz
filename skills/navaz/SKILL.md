---
name: "navaz"
description: "Začátek práce na digitálním odrazu: řekne Ondřejovi, kde jsme minule skončili, co je rozdělané a čím pokračovat. Použij, když napíše „navaž“, „kde jsme skončili“, „co máme rozdělané“ nebo začíná rozvojový den (úterý, čtvrtek)."
---

# Navaž

Ondřej si často nevzpomene, kde jsme skončili. Tenhle skill mu to řekne na jednu obrazovku, aby mohl hned pokračovat.

## Co přečíst

Nečti všechno. Jdi v tomto pořadí a další zdroj otevři jen tehdy, když ti chybí stav nebo další krok.

1. `stav/worklog.md` v tomto repozitáři, posledních 5 záznamů.
2. Otevřené pull requesty v `kasparekondrej/digitalni-odraz`: co čeká na Ondřejovo sloučení.
3. `/mnt/project-files/odraz/fail/navrhy.md`, pokud existuje: návrhy ve stavu „navrženo“, které čekají na jeho ano/ne.
4. Plán https://claude.ai/artifact/PGjCpcVaW3eC78xwZuHCMd, jen nejbližší milníky s datem.

## Výstup

Krátce a česky, nejvýš 12 řádků:

- Kde jsme skončili: jedna až dvě věty z posledního záznamu worklogu.
- Čeká na tebe: věci, kde je na tahu Ondřej (sloučit PR, odpovědět na návrh, dodat podklad). Nejstarší první. U každé odkaz.
- Rozdělané u mě: co odraz dělá a kdy to bude.
- Doporučený další krok: jedna věc, kterou má smysl udělat dnes, a proč.
- Na konci řádek „Zdroje:“ se soubory a odkazy, ze kterých jsi vyšel.

## Pravidla

- Nic nevymýšlej. Když worklog chybí nebo je prázdný, řekni to a vyjdi z PR a plánu.
- Citlivé věci (sazby, odměny, hodnocení lidí) do výstupu nepiš, i když je někde najdeš. Odkaž na profil.
- Nic neodesílej a nezapisuj mimo repozitář a Claude Docs.
