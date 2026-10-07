---
date: 2026-10-05
type: atoom
status: bezig
aliases: [Scout Atlas Film]
tags: [scouts, film, motion-design, webgl, three-js, verkenner, data]
---

# Scout Atlas — de film en de verkenner

> Eén HTML-bestand dat zelf een film van 2:20 afspeelt (met muziek, zonder stem) en daarna opent als verkenner van alle data. Atoom van [[Scoutskamp 2027]].

## Waar
- Repo: `daydragon20/animaties`, map `scout-atlas-2027/`
- Film: `scout-atlas-2027/index.html` (dubbelklikken; werkt offline)
- Bron: `scout-atlas-2027/bron/` (één JS-bestand per onderdeel) · data-rapport: `DATACONTROLE.md`
- Huidige versie (v3, 7 okt 2026): PR #3. Basis is de eerste film (4 okt), aangevuld met de beste onderdelen van de tweede (5 okt).

## Hoe gebruiken
| Toets | Wat |
|---|---|
| spatie | afspelen / pauze |
| ← → | 10 s terug / vooruit |
| D | naar de data (verkenner) |
| F | volledig scherm |
| H | bediening weg (schone schermopname) |

## De 8 hoofdstukken
1. **De vraag** (0:00) — zonsopgang boven de bol, "Eén kamp. 24 landen. Welk wordt het?"
2. **De weging** (0:12) — 188 vragen als tegels, hun gewicht, en de **3D-rugzak die altijd draait** (14 lagen, zwaarste onderaan)
3. **De kandidaten** (0:38) — 3D-kaart van Europa, de 24 landen rijzen op, de top 10 springt eruit
4. **Het landschap** (0:50) — 4.512 kubussen, goud = 100, daarna gesorteerd op eindscore
5. **De race** (1:06) — de top 10, categorie per categorie, zwaarste eerst, tot de eindstand
6. **Het vergelijk** (1:34) — top 10 × 14 categorieën, beste en zwakste per categorie
7. **Het podium** (1:54) — 3D-podium met de top 3
8. **De bestemming** (2:08) — de route van België naar de winnaar

## Leesbaarheid (les van 7 okt)
Alle tekst staat op minstens ±25 px in een beeld van 1920 breed (dus nog leesbaar op een laptopscherm), blijft lang genoeg staan om te lezen, en heeft hoog contrast. Labels op de 3D-kaart zoeken zelf een plek waar ze niets raken. Zie [[Skill Motion Design]].

## De verkenner (na de film)
- **Kaart van alle scores**: 24 × 188, slepen/scrollen/knijpen, klik op land of vraag, minikaart
- **Ranglijst**: sorteerbare tabel met 14 categorieën
- **Speel met de gewichten**: schuif per categorie, ranglijst herschikt meteen
- **CSV**: alles naar Excel

## Open vragen
- MP4-versie nodig voor de WhatsApp-groep?
- Film samen bekijken met de leiding en daarna in de verkenner met de gewichten spelen?

**Zie ook:** [[Scoutskamp 2027]] · [[Skill Motion Design]] · [[Scout Atlas Ranglijst en Inzichten]]
