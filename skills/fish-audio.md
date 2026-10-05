---
date: 2026-10-05
type: skill
status: onderzocht
aliases: [Skill Fish Audio]
tags: [skill, tts, stem, voice-over, fish-audio, api]
---

# Skill: Fish Audio (stem / voice-over via API)

> Hoe ik met Fish Audio een Nederlandse (of Vlaamse) stem onder een film of video zet. Eerste toepassing: [[Scout Atlas Film]].

## API in het kort (okt 2026)
- **Endpoint:** `POST https://api.fish.audio/v1/tts`
- **Headers:** `Authorization: Bearer <API-sleutel>` · `Content-Type: application/json` · `model: s2.1-pro` (gratis variant: `s2.1-pro-free`)
- **Body:** `text`, `reference_id` (= de stem), `format: "mp3"`, `mp3_bitrate: 192`, `normalize: true`, `prosody: { speed: 1, volume: 0 }`
- **Nederlands** wordt ondersteund (S2-modellen, 80+ talen).
- **Regie in de tekst** met vierkante haken: `[break]`, `[long-break]`, `[whispering]`, `[soft tone]`, `[excited]`, `[emphasis]`, `[sad]`, `[calm]`… Emotie-tags werken best aan het begin van een zin.
- Fouten: 401 = sleutel fout, 402 = tegoed op.

## Stemmen (openbare bibliotheek, id = `reference_id`)
| Stem | id | Waarom |
|---|---|---|
| Rustige Nederlandse Stem | `add4d395494c4ed0ba2018e77b39ea54` | standaard in Scout Atlas, 15k keer gebruikt |
| Vlaamse Vertelstem | `1c2edf7e681a46db9ab376a9e538d820` | Vlaams accent |
| Polygoonjournaalstem | `467f454e4ec14c0b8beb1a5644837549` | oud, diep, episch |
| Epic Game Announcer | `92e3ee13d7524fee904324e350a532a0` | bulderend (Engelse basis) |
Eigen stem klonen kan ook (10–30 s opname) → eigen `reference_id`.

## Zo gebruik ik het in Scout Atlas
1. `scout-atlas-2027/bron/.env` → `FISH_API_KEY=...` (staat in `.gitignore`, gaat nooit mee online)
2. `node stem.mjs --toon` → toont de 24 zinnen (getallen voluit uit de data ingevuld)
3. `node stem.mjs` → maakt `stem/v01.mp3 … v24.mp3`, waarschuwt als een zin te lang is (zet dan `"snelheid"` in `teksten.json`)
4. `node bouw.mjs` → stem ingebakken; muziek zakt automatisch onder de stem (ducking)

## Open vragen
- Welke stem klinkt het best voor 14–16-jarigen: rustig, Vlaams of episch?
- Eigen stem klonen voor ETF-video's (zie [[remotion|Skill Remotion]])?

**Zie ook:** [[Skill Motion Design]] · [[Scout Atlas Film]] · [[Scoutskamp 2027]]
