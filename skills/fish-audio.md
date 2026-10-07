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

## Zo gebruikte ik het in Scout Atlas v2 (stem is er in v3 weer uit)
> v3 (7 okt 2026) heeft geen stem: de pijplijn (`stem.mjs`, `stem/`) staat nog in de git-geschiedenis van `animaties` (commit 333429a). Hieronder hoe het werkte.

1. `scout-atlas-2027/bron/.env` → `FISH_API_KEY=...` (staat in `.gitignore`, gaat nooit mee online)
2. `node stem.mjs --toon` → toont de 24 zinnen (getallen voluit uit de data ingevuld)
3. `node stem.mjs` → maakt `stem/v01.mp3 … v24.mp3`, waarschuwt als een zin te lang is (zet dan `"snelheid"` in `teksten.json`)
4. `node bouw.mjs` → stem ingebakken; muziek zakt automatisch onder de stem (ducking)

## Wat ik geleerd heb bij de eerste echte run (5 okt 2026)
- **Sleutel-formaat:** begint met `sk-fish-`. Nooit in git of chat bewaren: alleen in een lokaal `.env` (staat in `.gitignore`). Een sleutel die ooit in een chat is geplakt: na gebruik vernieuwen op fish.audio.
- **Controleren wat een account heeft** (zonder iets te verbruiken): `GET https://api.fish.audio/wallet/self/api-credit` en `GET .../wallet/self/package`, beide met `Authorization: Bearer <sleutel>`.
- **Een nieuw gratis account is niet "unlimited":** pakket van 8.000 per maand en 0 betaald tegoed. Gebruik daarom het model `s2.1-pro-free` (`FISH_MODEL=s2.1-pro-free`): gratis voor API-gebruik, zelfde kwaliteit, geen tegoed nodig.
- **24 zinnen (±1.600 tekens) kosten niets** met dat model; ze zijn in ±1 minuut gemaakt.
- **Duur controleren per zin:** eerst één zin proberen, dan de rest. Een zin die langer is dan de ruimte in de film: verschuif de start of zet `"snelheid": 1.06` in `teksten.json`, niet de hele stem versnellen.
- **Lokale Fish-server** (Fish Speech/OpenAudio op je eigen pc): zet `FISH_URL=http://127.0.0.1:<poort>` in `.env`; dan is geen sleutel nodig.
- **Let op:** de Examencommissie-app maakt haar stemmen lokaal (Windows SAPI/Piper in `app/server/engine/stem.js`), niet met Fish Audio.

## Open vragen
- Welke stem klinkt het best voor 14–16-jarigen: rustig, Vlaams of episch? (nu: "Rustige Nederlandse Stem")
- Vervolgens: de Examencommissie-stem (SAPI/Piper) vervangen door Fish Audio voor betere voorleesstemmen?
- Eigen stem klonen voor ETF-video's (zie [[remotion|Skill Remotion]])?

**Zie ook:** [[Skill Motion Design]] · [[Scout Atlas Film]] · [[Scoutskamp 2027]]
