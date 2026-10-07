---
date: 2026-10-05
type: skill
status: onderzocht
aliases: [Skill Motion Design]
tags: [skill, motion-design, video, animatie, webgl, three-js, inspiratie, claude]
---

# Skill: Motion Design met Claude (HTML/WebGL-films)

> Wat "tempo en gevoel" in motion design concreet betekent, geleerd uit drie voorbeeldfilms die met Claude gemaakt zijn, en hoe ik het toepas. Eerste toepassing: [[Scout Atlas Film]].

## De drie referenties (bekeken beeld per beeld, 5 okt 2026)

### 1. "The Second Day" — @imjustnewatai (3:09)
Link: x.com/imjustnewatai/status/2106081142143168580 · prompt: *"a video of all human progress, then 30 years into the future"* → film + eigen muziek.
- **Opening = geduld.** Zwart scherm, één zin per keer (±3 s), klein en gecentreerd, serif. Kernwoord *cursief in goud* ("*3.3 million years*", "*one day*").
- **Eén doorlopend apparaat:** een klok (00:00:00 → 23:59:59) rechtsboven + dun tijdslijntje met gloeiend puntje onderaan. Alles hangt daaraan.
- **Spanningsboog:** eerst traag (Stone, Fire, Us: 6 s per kaart) → versnellend (1800, 1859, 1886… elk ±1 s) → stilte ("Everything so far really happened.") → witte flits → zonsopgang boven de aardrand → titel met wijde letterafstand.
- **Kaart-opbouw:** jaartal groot en dun · titel serif · één poëtische regel cursief · rechts een gloeiende lijntekening.
- Kleur: zwart met één warme gloed per scène (vuur, zon, sterren).

### 2. Showreel — @bohdan_exe (15 s, Opus, "43 minuten")
- **128 BPM, knippen op de beat.** In de tweede helft elke 1–2 tellen een nieuw idee.
- **HUD-kader:** kleine mono-labels in alle hoeken (titel, scène, tijdcode, BPM).
- Volle **kleurvlakken** (oranje, blauw), zware grotesk met **bewegingsonscherpte**, glazen 3D-bol met regenboogrand, deeltjes (Lorenz-attractor), woorden die doen wat ze zeggen (LOUD gloeit, SOFT vervaagt, SHARP met een snijlijn, HEAVY met echo's).

### 3. Showreel — @leonabboud (15 s, prompt van één zin)
Prompt: *"make a dynamic 15-second motion graphics video that shows what an incredible motion designer you are, like it's your showreel for a résumé. go all out."*
- Een stip → een lijn → **cirkelwipe** naar oranje vlak → logo + cursieve ondertitel.
- **3D-kubusveld** dat golft (heightmap) met een chromen bol + baan.
- **Kinetische typografie:** EVERY / SINGLE / FRAME, met de woorden **omlijnd herhaald** op de achtergrond.
- Infographics die tellen (+312 %), staafgrafiek, ringmeter; UI-kaart; metaballs; hoek-haakjes + "SCENE 03/07".

## Wat "tempo en gevoel" dus is (niet: snellere tekst)
1. **Eén gedachte per scherm**, en laat ze staan (≥ 2,5–3 s). Tekst komt zacht binnen (blur → scherp), niet met een plop.
2. **Een boog:** traag → versnellen → stilte → klap → rust. De versnelling zit in het montageritme, niet in de leessnelheid.
3. **Alles op de tel.** Kies een BPM (80 = 0,75 s per tel) en leg elke cue op een tel of maat.
4. **Kernwoorden kleuren** (cursief goud), de rest neutraal.
5. **Een doorlopend apparaat** (klok, tijdslijn, coördinaten, ranglijst die zich vult).
6. **Beweging zonder informatie** mag en moet: draaiende objecten, stof, gloed, camera die altijd licht drijft.
7. **Hoofdstukkaarten** als adempauze met energie: kleurvlak + cirkelwipe + kinetische titel.

## Leesbaarheid: zodat je alles kunt lezen (les van 7 okt 2026)
Een film van 1920 breed wordt op een laptop ±1280 breed getoond: tekst van 17 px wordt dan 11 px. Daarom:
1. **Minimum ±25 px** voor elke tekst in het 1920-beeld (labels, kolomkoppen, bovenbalk); koppen en cijfers veel groter.
2. **Leestijd**: ±0,45 s per woord + 1 s; liever een korte film die rustig leest dan een vlugge die niemand kan volgen.
3. **Contrast**: donkere inkt op papier, lichte tekst op nacht; geen grijs op grijs. Gedimde tekst niet lager dan ±60 %.
4. **Niets over elkaar**: labels op een 3D-kaart zoeken zelf een vrije plek (en krijgen een leiderlijntje); ze verschijnen pas als de camera stilstaat.
5. **Kijk altijd op het kleine formaat**: screenshots op 1280 breed, niet alleen op 1920.
6. **Getoonde score = sorteersleutel**: toon bij een race de tussenstand waarop de rijen sorteren, anders lijkt de volgorde fout.
7. **Uitkomsttekst uit de data afleiden** (wie vooraan, wie zakt, laagste score), niet overtypen.

## Hoe ik het bouw (techniek)
- Eén HTML-bestand, 1920×1080-podium dat meeschaalt; alles is een functie van de tijd `t` → spoelen werkt overal.
- **three.js** voor 3D + eigen bloom (gloed), DOM voor scherpe tekst, labels vastgeprikt aan 3D-punten.
- Muziek **zelf opgewekt** in JavaScript (synthesizer in een worker), synchroon met de tijdlijn; een stem kan optioneel via [[Skill Fish Audio]] (Scout Atlas v3 heeft bewust geen stem).
- Controleren: screenshots per moment met Playwright + een script dat elk getal in beeld vergelijkt met de data.

## Prompt-tips (uit het onderzoek)
- Beschrijf **uitkomst, gevoel en "klaar is het als"**, niet elke stap. Eén zin kan genoeg zijn ("go all out").
- Geef referenties mee (video's!) en zeg wat je eraan goed vindt.
- Vraag om een eigen soundtrack en een spanningsboog; zeg expliciet "niet sneller, wel meer gevoel".

## Open vragen
- Remotion ([[remotion|Skill Remotion]]) vs. HTML/WebGL: wanneer kies ik wat voor ETF-content?
- Een MP4-export standaard maken voor delen op sociale media?

**Zie ook:** [[Scout Atlas Film]] · [[Skill Fish Audio]] · [[Master Creatieve Werken]] · [[film/README|Film-afleveringen]]
