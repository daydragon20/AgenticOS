---
date: 2026-07-13
type: atoom
status: VAST
tags: [leer-app, javascript, functies, opslag]
---

# Leer-App — JS-Kernfuncties

> Atoom van [[Master Leer-App Spec]].

- **`norm()`** — lowercase + trim + NFD-accentstrip + apostrofnormalisatie + dubbele spaties weg.
- **`check(ex)`** — oefening nakijken.
- **`reveal(ex)`** — antwoord tonen.
- **`checkMC(ex)`** — meerkeuze nakijken.
- **`revealModels(ex)`** — modelantwoorden tonen.
- **`voc(id,mode,btn)`** — woordenschat-modus.
- **Enter** = nakijken.
- **Voortgang** (checklist én quiz-state) via `window.storage` met try/catch en in-memory fallback.

**Zie ook:** [[Master Leer-App Spec]] · [[Leer-App Componenten]] · [[Leer-App Oefentypes]]
