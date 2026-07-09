---
date: 2026-07-09
type: conventie
tags: [meta, conventie, structuur, brein, standaard, systeem]
---

# 📐 Kennis-Structuur Conventie — Hoe Nathans Brein Wordt Opgedeeld

> **Doel:** elk onderwerp — bestaand én toekomstig — wordt opgedeeld tot op het **diepste, meest specifieke detail**. Dit bestand is de vaste wet. Claude volgt dit automatisch bij elke nieuwe notitie.

## De 4 diepteniveaus

Alles zakt door tot het niet dieper *zinvol* kan.

| Niveau | Wat | Vorm | Voorbeeld |
|--------|-----|------|-----------|
| **1 · Domein** | Groot levensgebied | Map + MOC-hub (`_naam.md`) | `wereld/`, `business/`, `persoonlijk/` |
| **2 · Onderwerp** | Een ding binnen het domein | Map óf hub-notitie | `landen/noorwegen/` |
| **3 · Subonderwerp** | Een deel van dat ding | Notitie | `regio-lofoten.md` |
| **4 · Atoom** | Eén concreet, actiegericht feit/stap | Sectie of losse notitie | "Kajakgids-certificaat halen: waar, kost, duur" |

**Regel:** als een notitie meer dan ~5 los-actionabele stukken bevat, splits hem in kinderen. Blijf splitsen tot elk stuk **één ding** is dat je kunt lezen, beslissen of doen.

## Vaste opbouw van elke notitie
1. **Frontmatter** — `date`, `type`, `tags` (en waar zinvol `land`, `rol`, `status`, `fase`).
2. **Eén-zin-samenvatting** bovenaan (het "waarom" van deze notitie).
3. **Body** — opgedeeld in de kleinst zinvolle koppen.
4. **Open vragen** — wat weet ik nog niet? (voedt de vragenlijsten).
5. **Zie ook** — minstens 2 `[[wikilinks]]` omhoog (hub) en zijwaarts (verwante notities).

## Het "atoom-principe"
Een atoomnotitie beantwoordt precies één van deze:
- **Wat** is het? · **Waarom** voor mij? · **Hoe** doe ik het (stappen)? · **Wanneer** (fase/timing)? · **Wat kost het** (geld/tijd)? · **Wie** (contact/persoon)? · **Wat is de volgende stap**?

## Verplichte dwarsverbanden
Elke notitie linkt naar minstens één van de "ankers" zodat de graph nooit losse eilanden heeft:
- Levensfase → [[Nathans Levensplan]]
- Droom/doel → [[Nathans Bucket List]] of [[Nathans Ideaal Leven]]
- Geld → [[Financieel Plan]]

## Statuslabels (in frontmatter `status:`)
`idee` → `onderzocht` → `plan` → `bezig` → `gedaan` · en `droom` (verre horizon).

## Naamgeving
- Bestanden: `kebab-case.md`, kort en concreet.
- Hubs van een map: `_naam.md` (underscore = bovenaan in de lijst).
- Mappen: enkelvoud waar het een ding is (`land/`), meervoud voor verzamelingen (`landen/`).

## Hoe Claude dit toepast
Bij élke nieuwe of bewerkte notitie:
1. Bepaal het niveau (1–4).
2. Splits alles wat splitsbaar is tot atoomniveau.
3. Zet frontmatter, samenvatting, open vragen, en ≥2 links.
4. Werk de bovenliggende hub + [[Wiki Index|index]] bij.

**Zie ook:** [[Wereldkaart|🌍 Wereldkaart]] · [[Nathans Levensplan]] · [[Vragenlijst Wereld & Context]]
