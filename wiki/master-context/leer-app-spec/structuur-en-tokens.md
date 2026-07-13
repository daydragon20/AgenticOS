---
date: 2026-07-13
type: atoom
status: VAST
tags: [leer-app, structuur, tokens, css, fonts, kleuren]
---

# Leer-App — Structuur & Design-Tokens

> Atoom van [[Master Leer-App Spec]].

## Structuur
Sticky donkere sidebar links + main content rechts; op mobiel verdwijnt de sidebar en verschijnt een topbar-select. Sidebar: `.brand` (Fraunces, wit), `.navlbl` (kleine uppercase labels), nav-links (kleur `#DDE7D2`, `.active` = contrast/oker-achtergrond, `.done` krijgt een lichtgroene dot), mini-voortgangsbalk.

## Vaste design-tokens
`--cream:#FAF5EA` (body, NOOIT wit) · `--paper:#FFFDF7` (kaarten) · `--paper-2:#F4EEDF` (zebra-rijen) · `--ink:#2B3026` · `--ink-soft:#5A6152` · `--line:#E2DAC6` · `--ok:#3E8E5A` / `--ok-bg:#E2F2E6` · `--no:#C0492E` / `--no-bg:#F8E2DA` · schaduw `0 1px 2px rgba(63,85,54,.06), 0 8px 24px rgba(63,85,54,.07)`.

## Fonts
Fraunces (serif) voor koppen en grote nummers; Hanken Grotesk (sans) voor bodytekst, knoppen, inputs.

## Accentkleuren per vak
Frans groen+oker · Nederlands blauw+oranje · Wiskunde donkerblauw+goud · Fysica paars+amber · Chemie teal+rood · Duits grijsgroen+koper · Economie donkergroen+beige.

**Zie ook:** [[Master Leer-App Spec]] · [[Leer-App Componenten]] · [[Werkregels Kwaliteit en Vorm]]
