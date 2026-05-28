# PROJECT RAPPORT — ROCADELO HR × NATHAN CHARITA

**Vertrouwelijk | Mei 2026 | Document v1.0**

---

## EXECUTIVE SUMMARY

Gezamenlijk project tussen Matias (Rocadelo HR) en Nathan Charita: ontwikkeling en commercialisatie van een volledig geautomatiseerd AI LinkedIn outreach systeem. Eerst intern proof of concept bij Rocadelo HR, daarna commerciële managed service voor andere bedrijven.

---

## DEEL 1 — SAMENWERKING

### Rolverdeling
- **Nathan** → technische lead: bouw, implementatie, architectuur
- **Matias** → commerciële lead: audits, sales, financiën, netwerk

### Financiële afspraken (fase 1)
- Alle initiële kosten (tools, domains, subscriptions) gedragen door Rocadelo HR als PoC
- Bij succes: nieuwe vennootschap (~€5.000) met Nathan en Matias als volwaardige partners

---

## DEEL 2 — GROEISTRATEGIE IN 4 STAPPEN

1. **PoC (nu)** — AI-integratie outbound sales/recruitment intern bij Rocadelo HR
2. **Commercialisatie** — bewezen systeem als case study aanbieden aan concurrenten/bureaus
3. **Sectorexpansie** — uitbreiding naar andere sectoren (o.a. voeding) via netwerk Matias
   - Productaanbod: AI Audit (~€5k) → offerte op ROI-basis → implementatie → onderhoud
4. **Scale-up (2027–2028)** — grotere projecten, personeel, funding; lokale AI-infra bij enterprise (500+ FTE)

**Kernprincipe:** geen eigen AI-tool bouwen. Focus op AI automation expertise: beste tools inzetten en meebewegen met de markt.

---

## DEEL 3 — HET PRODUCT: AI LINKEDIN OUTREACH SYSTEEM

### Kritieke differentiator
**De klant koppelt nooit zijn eigen LinkedIn-profiel.** Nathan/Rocadelo beheren eigen opgewarmde accounts met eigen Belgische IP's. Als een account geblokkeerd wordt → eigen account, nooit dat van de klant.

### Tech Stack (Weg B — definitief)

| Tool | Functie | Kost/maand |
|------|---------|-----------|
| Unipile | LinkedIn verbinding & berichten via API | €49 |
| NodeMaven | Vast Belgisch residentieel IP per account | €20–30 |
| Claude API | Lead scoring, berichtenwriting, reply-verwerking | €15–25 |
| Hetzner Server | 24/7 hosting in Duitsland (GDPR-compliant) | €4–20 |
| Python + Claude Code | Motor die alles verbindt | gratis |
| SQLite | Database / geheugen van het systeem | gratis |
| **Totaal** | | **€88–124/maand** |

**Marge per klant: >90% | Nettomarge: €1.376+/klant/maand**

### 7 Claude Agents (generator-evaluator principe)

1. **Signal Detector** (Generator) — 50–100 Belgische profielen/dag via Unipile
2. **Lead Scoring Agent** (Gen + Eval) — scoort leads 0–100 op 15 intent-signalen; houdt 80+ bij
3. **Message Writer** (Generator) — 3 gepersonaliseerde DM-variaties per lead (max 75 woorden)
4. **Reply Handler** (Gen + Eval) — classificeert antwoorden en schrijft vervolgbericht
5. **Meeting Qualifier** (Generator) — kwalificeert warme leads via CHAMP-framework
6. **Performance Analyst** (Evaluator) — wekelijkse analyse, top 3 verbeteringen
7. **Master Director** (Orchestrator) — orkestreert alle agents; quality gate: score <32/40 = redo

### KPI Targets
- Connection acceptance: ≥35%
- Reply rate: ≥10%
- Positieve replies: ≥5% van replies
- Account warnings: 0

### De 3 bouwwegen

| Weg | Beschrijving | Tijdlijn |
|-----|-------------|---------|
| A | Handmatige flow via Claude.ai — PoC zonder technische setup | Vandaag |
| B | Python + Claude API + Unipile + NodeMaven + Hetzner — volledige pipeline | 2–3 weken (aanbevolen) |
| C | Eigen SaaS met dashboard via Claude Code | 4–8 weken, pas na Weg B |

---

## DEEL 4 — GO-TO-MARKET

### Positionering
- **Niet** een AI startup of tool — een **outsourced top-of-funnel team dat toevallig AI gebruikt**
- Vijand: spam-agencies die generieke berichten sturen vanaf het account van de recruiter zelf
- Doelniche fase 1: **Belgische tech/finance recruitmentbureaus van 3–15 mensen**, €60k–€120k plaatsingen

### Pricing

| Onderdeel | Bedrag |
|-----------|--------|
| Setup-fee (eenmalig) | €1.500 |
| Maandelijkse managed service | €1.500/maand |
| Founding client deal (max 8 plekken) | €750/maand × 6 maanden |
| Jaarcontract | €15.000/jaar (17% off) |

Setup-fee wordt **nooit** weggegeven — filtert tirekickers.

### Verkoopargumenten
- *"Jij koppelt nooit je eigen LinkedIn-profiel. Als een account geblokkeerd wordt, is dat ons account."*
- *"Eén extra kandidaat per maand en je bent 5× break-even."*
- *"We zijn een outsourced outbound-team, geen tool."*

### Top prioriteiten eerste 90 dagen
1. Positionering vastleggen (niche, vijand, categorienaam)
2. Founder LinkedIn-profiel optimaliseren
3. Build-in-public: 5 posts/week + wekelijkse nieuwsbrief
4. Lijst van 100 warme + 600 koude Belgische bureaus
5. Founding Client offer (5–8 plekken, €750/m × 6m)
6. Cold outreach engine: 2 secundaire domains, 4 inboxes, 5-email sequence
7. Discovery call script + 7-bezwaren document
8. Pricing-pagina met ROI-calculator
9. Free tool: "Belgian Recruitment LinkedIn Audit"
10. Eerste partnership-deal (ATS-reseller of recruitment trainer in BE)

**Niet doen in de eerste 90 dagen:** ads, benchmark report, affiliate program, voedingsindustrie, teamuitbreiding.

### 3 grootste fouten vermijden
1. Jezelf positioneren als "AI startup" — verban "AI" uit de eerste 30 seconden
2. Wachten op het "juiste moment" — 5 posts/week begint dag 1
3. Pilot Trap — founding deal is hard: 6 maanden min, testimonial-clausule, 2 referrals

---

## DEEL 5 — VOLGENDE STAPPEN

| Wanneer | Actie |
|---------|-------|
| Nu (zomer na examens) | Weg A starten — handmatige Claude.ai flow als PoC |
| Zomer 2026 | Fysieke meeting Antwerpen (kantoor Rocadelo of cowork) |
| Zomer 2026 | Architectuurplan schrijven voor volledige automatisatie |
| Na eerste successen | Weg B bouwen — volledige Python pipeline (2–3 weken) |
| Bij eerste/tweede betalende klant | Nieuwe vennootschap oprichten (~€5.000) |
| 2027–2028 | Scale-up naar enterprise en lokale AI-infrastructuur |

---

## FINANCIEEL OVERZICHT

| Scenario | Bedrag |
|---------|--------|
| Toolkost per klant/maand | €88–124 |
| Omzet per klant/maand | €1.500 |
| Nettomarge per klant/maand | €1.376+ |
| Marge % | >90% |
| Break-even voor recruitmentklant | 1 extra plaatsing per 5–6 maanden |
| Oprichting nieuwe vennootschap | ~€5.000 |
| AI Audit / Workshop prijs | ~€5.000 |

---

*Bronnen: Eerste Mail (Matias), Business Tips Playbook, Rocadelo HR Flow, AI LinkedIn Outreach v2.0*
*Rocadelo HR × Nathan Charita — Vertrouwelijk*
