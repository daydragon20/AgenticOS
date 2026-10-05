---
date: 2026-10-05
type: atoom
status: bezig
aliases: [Scout Atlas Film]
tags: [scouts, film, motion-design, webgl, three-js, verkenner, data]
---

# Scout Atlas — de film en de verkenner

> Eén HTML-bestand dat zelf een film van 3:28 afspeelt (met muziek, optioneel met stem) en daarna opent als verkenner van alle data. Atoom van [[Scoutskamp 2027]].

## Waar
- Repo: `daydragon20/animaties`, map `scout-atlas-2027/`
- Film: `scout-atlas-2027/index.html` (dubbelklikken; werkt offline)
- Bron: `scout-atlas-2027/bron/` (één JS-bestand per hoofdstuk) · data-rapport: `DATACONTROLE.md`
- Versie 2 (5 okt 2026): PR #3 · versie 1 (4 okt 2026): PR #1

## Hoe gebruiken
| Toets | Wat |
|---|---|
| spatie | afspelen / pauze |
| ← → | 10 s terug / vooruit |
| D | naar de data (verkenner) |
| V | stem aan/uit |
| F | volledig scherm |
| H | bediening weg (schone schermopname) |

## De 6 hoofdstukken
1. **De vraag** (0:00) — zwart, drie zinnen, zonsopgang boven de aarde, 25 kandidaten lichten op
2. **De meetlat** (0:27) — rol met 188 vragen, bol van 4.700 scores, **3D-rugzak die altijd draait** (14 lagen, zwaarste onderaan)
3. **Het landschap** (1:06) — 4.700 kubussen, goud = 100, landen schuiven in volgorde
4. **De afvaltocht** (1:24) — 25 → 1 op een 3D-kaart van Europa, "nog tien over", podium, witte flits
5. **Waarom Slovenië** (2:43) — wint geen enkele categorie, zakt nergens diep weg
6. **Eerlijk is eerlijk** (3:04) — versie 1, open vragen, route België → Slovenië, eindtitel

## De verkenner (na de film)
- **Kaart van alle scores**: 25 × 188, slepen/scrollen/knijpen, klik op land of vraag, minikaart
- **Ranglijst**: sorteerbare tabel met 14 categorieën
- **Speel met de gewichten**: schuif per categorie, ranglijst herschikt meteen
- **CSV**: alles naar Excel

## Stem toevoegen (volgende stap)
`bron/.env` → `FISH_API_KEY=...`, dan `node stem.mjs` en `node bouw.mjs`. Details: [[Skill Fish Audio]].

## Open vragen
- Welke stem past het best voor de groep: een rustige Nederlandse, een Vlaamse vertelstem of een gekloonde eigen stem?
- MP4-versie nodig voor de WhatsApp-groep?

**Zie ook:** [[Scoutskamp 2027]] · [[Skill Motion Design]] · [[Scout Atlas Ranglijst en Inzichten]]
