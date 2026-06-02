---
date: 2026-06-02
sources:
  - wiki/spott-onderzoek.html
  - wiki/battlecard-concurrenten.md
  - wiki/businessplan-outbound-engine.html
  - wiki/stappenplan-uitbreiding-accounts-warming.html
tags: [rocadelo, linkedin, outreach, concurrentie, spott, elvatix, strategie, positionering, account-warming, brein]
---

# Rocadelo — Concurrentie & Strategie (brein-synthese)

*Verwerkte kern uit de 5 documenten (2 juni 2026). De volledige documenten staan los in `wiki/`. Dit is de werkbare samenvatting voor de LinkedIn outreach business.*

---

## 1. De positionering in één zin

> Wij nemen de LinkedIn-outreach van recruitmentbureaus volledig over — op **onze eigen veilige, opgewarmde accounts** — zodat er vanzelf kandidaten en opdrachten binnenstromen. Het bureau koppelt **nooit** zijn eigen profiel.

Werktitel businessplan: **"De Outbound Engine"** (definitieve naam nog te kiezen).

**Model:** done-for-you managed service (géén software die de klant zelf bedient).
**Differentiator:** accountveiligheid + volledig ontzorgen + recruitment-niche + lokaal (BE, NL+FR).
**Prijs:** €1.500 setup + €1.500/maand (mogelijk te laag bij echte plaatsingen — zie les 4).

---

## 2. Concurrenten — de witte ruimte

### Spott (de échte tegenstander)
- AI-native **ATS & CRM** voor recruitmentbureaus. Leuven + New York, opgericht 2024, $3,2M seed (Base10, YC W25, Fortino), €100K → €1M+ ARR in 4 maanden, ~21 mensen.
- Oprichters Manu Vanderveeren, Lander Degrève, Samuel Smeys (ex-McKinsey/BCG/Bain, KU Leuven).
- Outreach (e-mail + LinkedIn + WhatsApp sequences) is bij hen **één feature** tussen vele.
- **Zwakte die wij uitspelen:** het is een tool die de klant zélf bedient en waarvoor hij **zijn eigen account koppelt**; zware platform-migratie; breedte i.p.v. diepte op outreach.
- **Niet op techniek concurreren** (die winnen ze). Concurreer op de as: "Spott geeft je software die je team zelf moet bedienen met je eigen accounts. Wij zijn een outsourced team dat het werk én het accountrisico overneemt." Náást hen, niet frontaal.

### Elvatix (kleine vis)
- Self-serve LinkedIn-outreach tool, draait op het **eigen profiel** van de gebruiker, niet recruitment-specifiek.
- Bevestigt onze positionering 1-op-1. Niet noemen als "concurrent"; het is een tool, wij zijn een dienst.
- *Te verifiëren:* prijs, cloud vs. browser-based, EU-link.

### De overkoepelende les
Beide concurrenten **bevestigen** onze positionering i.p.v. ze te bedreigen:
- Spott = high-end "de klant doet het zelf met software".
- Elvatix = low-end "de klant doet het zelf met een tool".
- **Niemand verkoopt wat wij verkopen:** een outsourced outbound-team dat het accountrisico volledig overneemt. Speel nooit frontaal op techniek of prijs — speel op die ene as die alleen van ons is.

---

## 3. De LinkedIn-crackdown = onze hefboom (én ons risico)

- Q1 2026: LinkedIn handhaaft veel strenger. ~40% van accounts met non-compliant tools (HeyReach, Expandi, Dripify, Waalaxy) kreeg restricties tussen jan–maart 2026. HeyReach' bedrijfspagina + oprichtersprofiel werden permanent verwijderd (25 maart 2026).
- **Tegengestelde strategie:** Spott beschermt het klant-account door *minder* te automatiseren (terug naar manueel/compliant). Wij beschermen het door het klant-account **helemaal uit de vergelijking te halen** — eigen opgewarmde accounts + eigen Belgische IP's → wij kunnen wél agressiever automatiseren.
- **Maar:** daardoor zijn **onze** accounts degene die gebrand kunnen worden. De make-or-break-vaardigheid van het hele model is **account-warming, -rotatie en -beheer**. Beheers dat → differentiator is echt. Onderschat het → achilleshiel.

---

## 4. Account-warming protocol (samenvatting — detail in stappenplan-doc)

- **Niet kopen.** Accounts kopen/verkopen is ToS-verboden, detecteerbaar (device/cookie/IP-mismatch), GDPR-risico, en botst met onze kernbelofte. Maak **echte agency-accounts** aan (instemmende persoon, "Talent Sourcer bij [bureau]"), compleet profiel, warm traag op.
- **Limieten = trust score, geen vast getal.** Nieuw account (<3 mnd): ~50-80 invites/week. Gevestigd: ~100/week. High-trust: 150-200/week. Houd openstaande invites onder 500.
- **Belgisch NodeMaven-IP vanaf dag 1, nooit wisselen.** Locatiewissel = directe rode vlag.
- **Eerste ~30 dagen alles manueel.** Warming-schema: week 1 = 5-10/dag manueel → week 5-6 = ~20/dag (~100/week). Pas eind week 4 voorzichtig aan Unipile koppelen.
- **Pre-engage** voor elk verzoek (profiel bezoeken, liken/reageren, 2-3 dagen wachten) → kan acceptatie verdubbelen.
- **Pool-regel:** altijd 6-8 actieve accounts + 2-3 in warmup als backup. Bij 2 warnings → account stoppen, backup activeren.
- KPI's per account: acceptatie >35-40%, gezonde reply rate, 0 warnings, pending <500.

---

## 5. De tech-stack als één keten (build vs. buy)

**Spott bouwt; wij kopen/huren** — dat is onze kracht als klein team: bestaande API's slim aan elkaar knopen.

| Tool | Soort | Rol |
|------|-------|-----|
| Claude API | REST (key in header) | De hersenen: scoren, schrijven, classificeren |
| Unipile | REST + webhooks | Eén deur naar LinkedIn/WhatsApp/e-mail |
| NodeMaven | Proxy | Belgisch residentieel IP per account |
| n8n | Orchestrator | Plant, triggert, verbindt alle nodes |
| Hetzner | Server | Backend draait 24/7 |
| SQLite/Supabase | Database | Geheugen: leads, statussen, verstuurde berichten |

**Eén cyclus:** n8n start → Unipile zoekt profielen → DB opslaan → Claude scoort + schrijft → Unipile verstuurt (opgewarmd account, NodeMaven-IP) → antwoord → Unipile-webhook → Claude classificeert + vervolg → DB bijwerken.

Kernidee: een API is een deur (menu van acties), geen broncode. `POST` naar een URL + key in headers + JSON. Sleutels horen **alleen** in de backend (env vars), nooit frontend. Webhooks > polling voor reply-handling.

---

## 6. De 9 lessen van Spott's pad (toepassen)

1. Begin met **één scherp pijnpunt** (top-of-funnel outreach) — doe dat uitmuntend vóór je uitbreidt.
2. **Bouw eerst intern, bewijs het, verkoop dan** (dogfooding bij Rocadelo HR → case study → extern).
3. **Durf te pivoten** op klantfeedback.
4. **Verkoop op waarde, niet op prijs.** Te laag = signaal "ik ben 10× slechter" (Tom Blomfield-les). €1.500/maand kan laag zijn bij echte plaatsingen.
5. **Maak inkomsten recurring** — koester en verleng contracten, meet en verlaag churn.
6. **Content & reputatie als motor** (Spott groeide "no cold calls").
7. **Standaardiseer & automatiseer de dienst** → richting SaaS-marges.
8. **Positioneer bewust tegenover tools:** "Een tool zoals Spott of HeyReach laat jóu het werk doen én jóuw account riskeren. Wij doen het werk vóór jou, op onze eigen veilige accounts."
9. **Overweeg later een hybride model** (dienst → product), pas wanneer de dienst bewezen winstgevend is.

---

## 7. Value-add tools om later te bouwen (na 1e klant)

Spott's tools die onze dienst verdiepen (Fase 7 in stappenplan):
- **Nu prioritair:** (1) AI note-taker voor intake/interviews (Recall.ai + Claude → gestructureerd kandidaatrapport), (2) CV-reformatter naar klant-sjabloon.
- **Daarna:** candidate presentation/portal (in client portal) + scheduler (Cal.com-link).
- **Later:** data-enrichment (ontbrekende e-mails/telefoons).
- Strategisch: dit is waar onze dienst stilaan een product wordt — exact Spott's pad (begon met rapporten-tool, werd platform).

---

## 8. Open punten (eerst beslissen)

1. **Prijsmechaniek & attributie:** vast / revenue-share / hybride? Leidend principe: afrekenen op wat ons systeem zelf kan **meten** (bv. geboekte gekwalificeerde afspraak) → vermijd attributie- en inningsdiscussies. Hardste punt van het model.
2. **Account-warming & -beheer:** draagt het hele model.
3. **Tool vs. partner:** Nathan en Matias één gedeeld beeld vóór extern gaan.

*Bronnen publiek; cijfers zijn momentopname. Diepte boven breedte — ken je arena koud.*
