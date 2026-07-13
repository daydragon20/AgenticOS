---
date: 2026-07-13
type: atoom
status: VAST
tags: [leer-app, componenten, css, tabellen, oefeningen]
---

# Leer-App — Vaste Componenten

> Atoom van [[Master Leer-App Spec]].

- `.rule` — gekleurde linkerborder-kaart voor formules/regels, varianten `.o`/`.b`.
- `.grammar-tbl` — donkere accent-header, eerste kolom accent-pale.
- `.voc` — woordenschattabel met verberg-toggles: CSS-klassen `hide-fr`/`hide-nl` maken tekst transparant met gestreepte gradient, `:hover` onthult, **GEEN JS** voor de reveal.
- `.toggle-row` met pill-knoppen (`.tbtn`, `.on` = accent solid).
- `.ex` — oefencontainers met groot Fraunces-nummer, invulvelden (`.fib`: onderrand in contrastkleur, `.good` groen, `.bad` rood), meerkeuze-`.choices` (fout toont meteen het juiste antwoord), `.btn` + `.btn.ghost` + scorebadge (x/total, `.full` = groen).
- `.callout` (blauw-pale, icoon+tekst) · `.mistakes` (oker-pale foutenchecklist) · `.grid2` (1 kolom onder 760px) · `.pill` labels · `.day` planningkaarten · `#masterlist` checklist met togglebare boxen.

**Zie ook:** [[Master Leer-App Spec]] · [[Leer-App Structuur en Tokens]] · [[Leer-App JS Kernfuncties]]
