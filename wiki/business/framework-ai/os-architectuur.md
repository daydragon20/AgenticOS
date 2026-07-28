---
date: 2026-07-28
type: atoom
venture: Framework AI
status: idee
tags: [framework-ai, architectuur, agents, ceo-agent, controlelagen, tech]
---

# Framework AI — OS Architectuur

> **Hoe** is het systeem opgebouwd? Een strategische laag, een CEO Agent, afdelingsagents, en een uitvoeringslaag. Atoom van [[Framework AI]].

## De architectuur

```
Framework AI OS

Strategische laag

        |
        ↓

CEO Agent

        |
        ↓

--------------------------------

Finance Agent

Legal Agent

Security Agent

Operations Agent

Sales Agent

Marketing Agent

HR Agent

Customer Agent

--------------------------------

        |
        ↓

Uitvoering

Software

Robots

Menselijke medewerkers
```

## Het kernprincipe: geen enkele AI controleert alles alleen
Een autonome organisatie heeft **controlelagen** nodig — net zoals menselijke bedrijven afdelingen hebben. De scheiding is geen inefficiëntie, het is de veiligheidsarchitectuur (zie [[Framework AI Uitdagingen]]).

## De 8 afdelingsagents

| Agent | Verantwoordelijkheid |
|-------|----------------------|
| Finance | Cashflow, facturatie, budget, rapportering |
| Legal | Contracten, compliance, regelgeving |
| Security | Cybersecurity, toegangen, audits |
| Operations | Dagelijkse uitvoering en planning |
| Sales | Leads, aanbod, closing |
| Marketing | Zichtbaarheid, content, positionering |
| HR | Mensen, aanwerving, opvolging |
| Customer | Klantenservice en relatiebeheer |

## Praktische link naar wat al bestaat
[[Rocadelo 7 Agents]] is een werkende mini-versie van deze architectuur binnen één afdeling (sales/recruitment). De sprong naar Framework AI = die logica naar alle 8 afdelingen tillen, met een CEO Agent erboven.

## Open vragen
- Hoe geeft de CEO Agent opdrachten zonder een single point of failure te worden?
- Waar zit de menselijke noodstop, en welke beslissingen mogen agents nooit alleen nemen?
- Welke stack: n8n als orkestratie + Claude API als redeneerlaag, of een eigen orchestrator? (zie [[Skills n8n|skills/n8n.md]])

**Zie ook:** [[Framework AI]] · [[Rocadelo 7 Agents]] · [[Rocadelo Tech Stack Kosten]] · [[Framework AI Uitdagingen]] · [[Framework AI Business Blueprint Library]] · [[AI Dev Resources]]
