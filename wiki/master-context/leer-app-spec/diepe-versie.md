---
date: 2026-07-13
type: atoom
status: VAST
tags: [leer-app, diepe-versie, studeerdocument, geschiedenis, glossarium]
---

# Leer-App — Diepe Versie (studeerdocumenten)

> Atoom van [[Master Leer-App Spec]]. Het geschiedenis-doc is het voorbeeld.

- Structuur **exact volgens het officiële leerstofoverzicht** (elke titel/HV wordt een sidebarsectie in die volgorde; buiten-scope weglaten).
- **ALLE bronnen** gebruiken incl. PowerPoints (python-pptx voor tekst en tabellen).
- **Hover-glossarium:** centraal `GLOSSARY`-object `{key:{term,def}}`, in content `<b data-g="key">`, JS wrapt bij load elke `[data-g]` met tooltip.
- **Overhoorlijst** met afdekbare kant (CSS blur/transparent + hover-reveal, flip-toggle).
- Veel horizontale `.timeline`-tijdlijnen en inline-SVG-grafieken.
- Machtssystemen expliciet in **tabellen én grafieken** per land plus een side-by-side vergelijking.
- Officiële **begrippenlijst verbatim** voor de drill als die bestaat.

**Zie ook:** [[Master Leer-App Spec]] · [[Leer-App Componenten]] · [[Werkregels Kwaliteit en Vorm]]
