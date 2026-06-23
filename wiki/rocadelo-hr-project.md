---
date: 2026-05-16
sources:
  - Project Rapport Rocadelo HR × Nathan Charita v1.0 (Mei 2026)
tags: [rocadelo, matias, linkedin, automation, outreach, recruitment, samenwerking, agency, AI]
---

# PROJECT RAPPORT — ROCADELO HR × NATHAN CHARITA

**Vertrouwelijk | Mei 2026 | Document v1.0**

---

## EXECUTIVE SUMMARY

Dit rapport vat alle besproken inhoud samen binnen het gezamenlijke project tussen Matias (Rocadelo HR) en Nathan Charita. Het project betreft de ontwikkeling en commercialisatie van een volledig geautomatiseerd AI LinkedIn outreach systeem, eerst als intern proof of concept voor Rocadelo HR, daarna als een commercieel aangeboden managed service aan andere bedrijven.

---

## DEEL 1 — DE SAMENWERKING: OORSPRONG & VISIE

### Context

Matias (Rocadelo HR) nam contact op met Nathan om een potentiële samenwerking uit te werken rond AI-automatisering van sales- en recruitmentworkflows. De eerste mail schetste de grote lijnen van een meerjarige groeistrategie.

### Rolverdeling

- **Nathan** → technische lead: bouw, implementatie en architectuur van de AI-systemen
- **Matias** → commerciële lead: audits bij klanten, sales, financiën en netwerk

### Financiële afspraken (fase 1)

Alle initiële investeringen (tools, email domains, subscriptions) worden gedragen door Rocadelo HR als proof of concept. Nathan neemt de technische lead. Bij succes wordt een nieuwe vennootschap opgericht (~€5.000 kost) waarin beiden volwaardige partners zijn.

---

## DEEL 2 — DE GROEISTRATEGIE IN 4 STAPPEN

### Stap 1 — Proof of Concept (Nu)

AI-integratie van outbound sales en recruitment workflows intern bij Rocadelo HR. Dit dient als testcase en validatie van het systeem.

### Stap 2 — Commercialisatie (Na succesverhaal)

Het bewezen systeem wordt als case study aangeboden aan concurrenten en soortgelijke bureaus. Prijsstrategie: lage instapprijs voor de eerste referentieklanten, daarna prijzen verhogen naarmate meer sociale proof beschikbaar is.

### Stap 3 — Sectorexpansie

Na voldoende tractie in recruitment: uitbreiden naar andere sectoren (o.a. voedingsindustrie) via het bestaande netwerk van Matias. Het productaanbod per sector:

1. AI Audit / Workshop (~€5.000)
2. Offerte op basis van business case (ROI-berekening: besparing vs. investering)
3. Implementatie
4. Onderhoud en doorlopend contact voor verdere automatisering

### Stap 4 — Scale-up (2027–2028)

Grotere projecten, meer personeel, funding ophalen. Focus op lokale AI-infrastructuur bij grote bedrijven (500+ FTE) voor volledige GDPR-compliance:

- Vooranalyse workflows via audit
- Opzet centrale/lokale AI-IT infrastructuur (lokale modellen, hardware)
- Implementatie van workflow automations op lokale of EU-cloud modellen
- Maintenance en doorontwikkeling

### Kernprincipe

Geen complexe eigen AI-tool bouwen die snel verouderd raakt. Focus op **AI automation expertise**: de beste beschikbare tools van het moment inzetten voor klanten en meebewegen met de markt.

---

## DEEL 3 — HET PRODUCT: AI LINKEDIN OUTREACH SYSTEEM

### Het probleem dat het oplost

Het recruitment/sales proces is vandaag enorm tijdsintensief:

- Handmatig 3+ uur per dag berichten personaliseren
- Eigen LinkedIn-profiel altijd in gevaar bij gebruik van outreach tools
- Bestaande tools zijn ofwel robotisch, ofwel riskant, ofwel niet recruitment-specifiek

### De kritieke differentiator

**De klant koppelt nooit zijn eigen LinkedIn-profiel.** Rocadelo/Nathan beheren eigen opgewarmde accounts met eigen Belgische IP-adressen. Als een account geblokkeerd wordt, is dat een eigen account — nooit dat van de klant. Dit is een emotioneel sterk verkoopargument dat rationele argumenten overtreft.

### De definitieve tech stack (Weg B)

| Tool | Functie | Kost/maand |
|------|---------|------------|
| Unipile | LinkedIn verbinding & berichten via geauthenticeerde API | €49 |
| NodeMaven | Vast Belgisch residentieel IP per account | €20–30 |
| Claude API | Lead scoring, berichtenwriting, reply-verwerking | €15–25 |
| Hetzner Server | 24/7 hosting in Duitsland (GDPR-compliant) | €4–20 |
| Python + Claude Code | Motor die alles verbindt | Gratis |
| SQLite | Database / geheugen van het systeem | Gratis |
| **Totaal** | | **€88–124/maand** |

**Marge per klant: >90% | Nettomarge: €1.376+/klant/maand**

### De 7 Claude Agents — Architectuur

Het systeem werkt via het generator-evaluator principe van Anthropic:

1. **Signal Detector** (Generator) — zoekt 50–100 Belgische profielen/dag via Unipile
2. **Lead Scoring Agent** (Gen + Eval) — scoort leads 0–100 op 15 intent-signalen; houdt alleen 80+ bij
3. **Message Writer** (Generator) — schrijft 3 gepersonaliseerde DM-variaties per lead (max 75 woorden)
4. **Reply Handler** (Gen + Eval) — classificeert antwoorden en schrijft gepast vervolgbericht
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
|-----|-------------|----------|
| A | Handmatige flow via Claude.ai — proof of concept zonder technische setup | Vandaag starten |
| B | Python + Claude API + Unipile + NodeMaven + Hetzner — volledige autonome pipeline | 2–3 weken (aanbevolen) |
| C | Eigen SaaS met dashboard via Claude Code | 4–8 weken, pas na Weg B |

### Concurrentievergelijking

| Tool | Prijs | Zwakte |
|------|-------|--------|
| Clay.com | €149–800/mo | Geen outreach, klant koppelt eigen profiel |
| PhantomBuster | €69–439/mo | Browser cookies → hoog detectierisico |
| HeyReach | €79/mo | Klant beheert zelf, koppelt eigen accounts |
| Expandi | €99/mo | Eigen profiel, geen recruitment-variant |
| **Ons systeem** | **€1.500 setup + €1.500/mo** | **Managed service, klantprofiel nooit in gevaar** |

### Recruitment vs. Sales variant

Het systeem heeft twee varianten met dezelfde architectuur — alleen andere prompts:

- **Sales outreach**: zoekt kopers/beslissers, signals op budget & pijn, doel = meeting
- **Recruitment variant (differentiator)**: zoekt passief zoekende kandidaten, signals op "open to work"/jobwisseling, doel = kandidaat interesseren. **Vrijwel geen concurrentie op dit model.**

**Business case voor recruitmentbureaus:** Belgische bureaus factureren 15–20% van jaarsalaris bij aanwerving. Bij €50.000 = €7.500–10.000 per plaatsing. Systeem kost €1.500/maand. Één extra plaatsing = 5–6 maanden terugbetaald.

---

## DEEL 4 — GO-TO-MARKET STRATEGIE

### Positionering

Jullie zijn **geen AI startup en geen tool**. Jullie zijn een **outsourced top-of-funnel team dat toevallig AI gebruikt**. Dit onderscheid is fundamenteel voor alle communicatie.

Vijand: niet Lemlist of Expandi — de vijand is *"de spam-bende: agencies die generieke berichten sturen vanaf het account van de recruiter zelf, met als gevolg een verbrand LinkedIn-profiel."*

Doelniche fase 1: **Belgische tech/finance recruitmentbureaus van 3–15 mensen** die kandidaten plaatsen tussen €60k–€120k.

### Pricing

| Onderdeel | Bedrag |
|-----------|--------|
| Setup-fee (eenmalig) | €1.500 |
| Maandelijkse managed service | €1.500/maand |
| Founding client deal (max 8 plekken) | €750/maand × 6 maanden |
| Jaarcontract met korting | €15.000/jaar (17% off) |

**Setup-fee wordt nooit weggegeven** — het filtert tirekickers en signaleert kwaliteit.

### Verkoopargumenten (kant-en-klare zinnen)

- *"Jij koppelt nooit je eigen LinkedIn-profiel. Als een account geblokkeerd wordt, is dat ons account — niet dat van jou. Jouw 10 jaar aan connecties zijn nooit in gevaar."*
- *"Eén extra kandidaat per maand en je bent 5× break-even."*
- *"We zijn niet zoals Lemlist — die geven jou een tool. Wij zijn een outsourced outbound-team."*

### Top 10 prioriteiten (eerste 90 dagen)

1. Positionering vastleggen: niche, vijand, categorienaam
2. Eén founder LinkedIn-profiel optimaliseren (headline, banner, about, Loom)
3. Build-in-public: 5 LinkedIn-posts/week + wekelijkse nieuwsbrief
4. Lijst van 100 warme contacten + 600 koude Belgische bureaus (Sales Nav + Clay)
5. Founding Client offer ontwerpen (5–8 plekken, €750/m × 6m)
6. Cold outreach engine: 2 secundaire domains, 4 inboxes warm, 5-email sequence + multichannel
7. Discovery call script + 7-bezwaren document opstellen en oefenen
8. Pricing-pagina met ROI-calculator + decoy 3-tier opties
9. Free tool: "Belgian Recruitment LinkedIn Audit"
10. Eerste partnership-deal sluiten (ATS-reseller of recruitment trainer in BE)

**Wat NIET te doen in de eerste 90 dagen:** geen ads, geen benchmark report, geen affiliate program, geen Fase 2 voedingsindustrie, geen teamuitbreiding.

### De 3 grootste fouten om te vermijden

**Fout 1 — Jezelf positioneren als "AI startup"**
Verban het woord "AI" uit de eerste 30 seconden van elke pitch. Praat alleen over plaatsingen, intakes en pipeline.

**Fout 2 — Wachten op het "juiste moment" om publiek te gaan**
Één founder begint vandaag met 5 LinkedIn-posts/week. Compounding begint dag 1, niet maand 6.

**Fout 3 — De "Pilot Trap": eerste klanten te goedkoop binnenhalen zonder commitment**
Founding Client deal is hard: 6 maanden minimum, testimonial-clausule, 2 referral-commitments. Geen €500/maand-pilots zonder contract.

---

## DEEL 5 — VOLGENDE STAPPEN

1. **Nu (zomer na examens Nathan):** Weg A starten — handmatige Claude.ai flow als proof of concept voor Rocadelo HR
2. **Zomer 2026:** Fysieke meeting in Antwerpen (kantoor Rocadelo of cowork space) voor concrete uitwerking
3. **Zomer 2026:** Architectuurplan schrijven voor volledige automatisatie + tool-selectie
4. **Na eerste successen:** Weg B bouwen — volledige Python pipeline (2–3 weken bouwtijd)
5. **Bij eerste/tweede betalende klant:** Nieuwe vennootschap oprichten (~€5.000), Nathan en Matias als volwaardige partners
6. **2027–2028:** Scale-up naar grotere projecten en lokale AI-infrastructuur bij enterprise

---

## FINANCIEEL OVERZICHT

| Scenario | Bedrag |
|----------|--------|
| Toolkost per klant/maand | €88–124 |
| Omzet per klant/maand | €1.500 |
| Nettomarge per klant/maand | €1.376+ |
| Marge % | >90% |
| Break-even voor recruitmentklant | 1 extra plaatsing per 5–6 maanden |
| Oprichting nieuwe vennootschap | ~€5.000 |
| AI Audit / Workshop prijs | ~€5.000 |

---

*Rapport gegenereerd op basis van projectdocumenten: Eerste Mail (Matias), Business Tips Playbook, Rocadelo HR Flow, AI LinkedIn Outreach v2.0*
*Rocadelo HR × Nathan Charita — Vertrouwelijk*

**Zie ook:** [[AI Automation Agency]] · [[Nathans Levensplan]] · [[Financieel Plan]] · [[Netwerk Belgie]]
