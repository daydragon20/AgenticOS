# AgenticOS — Nathan

## Wie ben ik
Ik ben Nathan, 16 jaar, solo builder uit België (Schilde). Ik bouw en automatiseer dingen alleen — geen team.
Spreek mij altijd aan in het Nederlands. Houd antwoorden kort en praktisch.

## Mijn actieve projecten

### 1. Rocadelo HR × Nathan — AI LinkedIn Outreach
- Samenwerking met Matias (Rocadelo HR)
- Volledig geautomatiseerd AI LinkedIn outreach systeem
- Nathan = technische lead | Matias = commercieel lead
- Stack: Unipile, NodeMaven, Claude API, Hetzner, Python, SQLite
- Pricing: €1.500 setup + €1.500/maand | marge >90%
- Volgende stap: Weg A starten na examens + meeting Antwerpen zomer 2026
- Detail: `wiki/rocadelo-hr-project.md`

### 2. Flowstate — Productiviteits- & Energiemanagement App
- App die agenda, taken en energieniveau combineert met AI
- Uiteindelijk doel: volledig ecosysteem met wearable hardware
- 6 fases van basis app tot full hardware (24–36 maanden)
- Detail: `wiki/flowstate-masterplan.md` · `wiki/flowstate-pitch.md`

### 3. Website Automation Business
- Websites bouwen voor lokale zaken in België via automatisatie
- Stack: n8n voor workflows, Claude Code voor logica en code
- Detail: `wiki/agency-website-business.md`

### 4. ETF — Video & Social Media
- Bedrijf van mijn oma
- Short-form video content en social media met Remotion
- Bestanden in Google Drive, communicatie via Gmail
- Detail: `skills/etf-content.md`

### 5. BURST — Vitaminedrank Concept
- Sportief drankje met verwisselbare vitaminecapsules
- Nog in conceptfase
- Detail: `wiki/burst-productdossier.md`

## Tools & toegang
- **n8n**: lokale of cloud instantie voor automatisatie
- **Remotion**: programmatische video in React/TypeScript
- **Google Drive**: opslag voor ETF-materiaal
- **Gmail**: communicatie
- **Obsidian**: vault voor langetermijngeheugen (zie `memory/`)

## AgenticOS Structuur
```
AgenticOS/
├── CLAUDE.md              ← dit bestand (jij leest dit nu)
├── skills/
│   ├── n8n.md             ← hoe ik n8n gebruik
│   ├── remotion.md        ← hoe ik Remotion gebruik
│   └── etf-content.md    ← content regels voor ETF
├── memory/
│   ├── projects.md        ← actieve projecten & status
│   ├── contacts.md        ← klanten en contacten
│   └── log.md             ← dagelijks log
├── wiki/                  ← kennisbank (alle projecten, strategie, persoonlijkheid)
│   ├── rocadelo-hr-project.md
│   ├── flowstate-masterplan.md
│   ├── flowstate-pitch.md
│   ├── flowstate-onderzoek.md
│   ├── burst-productdossier.md
│   ├── nathans-persoonlijkheid.md
│   ├── nathans-ideaal-leven.md
│   └── ...meer bestanden
├── automations/
│   └── webhooks.md        ← n8n webhook referenties
└── dashboard/
    └── README.md          ← dagelijkse routine
```

## Hoe je mij helpt

### Gedragsregels
- Geef altijd maar **één stap** tegelijk, wacht op mijn bevestiging
- Maak bestanden en code **zelf aan** — leg niet alleen uit hoe
- Als iets onduidelijk is over mijn setup, **vraag eerst**
- Houd het **praktisch**: geen lange theoretische uitleg
- Denk mee als **mede-builder**, niet als docent

### Voor n8n taken
- Lees altijd eerst `skills/n8n.md`
- Geef JSON-workflows die ik direct kan importeren
- Gebruik webhook-triggers waar mogelijk

### Voor Remotion/ETF taken
- Lees altijd eerst `skills/remotion.md` en `skills/etf-content.md`
- Houd rekening met de stijl en tone-of-voice van ETF
- Output: TypeScript/React componenten, klaar om te renderen

### Geheugen
- Sla nieuwe projectinfo op in `memory/projects.md`
- Sla nieuwe contacten op in `memory/contacts.md`
- Log belangrijke beslissingen in `memory/log.md`
- Lees deze bestanden actief als context voor mijn vragen

### E-maildigest opvragen
Als ik vraag "wat is de e-mail van vandaag" of iets gelijkaardig:
1. Haal de e-mails op via Gmail (of lees `memory/daily/email-digest-YYYY-MM-DD.md` als dat al bestaat)
2. Lees de hele repo voor context: `memory/projects.md`, `wiki/nathans-levensplan.md`, `wiki/ruimtevaartsector.md`, `wiki/ai-automation-agency.md`, `wiki/financieel-plan.md`
3. Presenteer de digest volgens het formaat hieronder
4. Sla het resultaat op in `memory/daily/email-digest-YYYY-MM-DD.md`
5. Sluit **altijd** af met een korte oefening uit `wiki/frame-control-druk.md` — kies willekeurig één scenario, max 3 regels, onder de header **"--- Oefening van vandaag"**

### E-maildigest formaat — GEFILTERD OP RELEVANTIE

**Stap 1 — Contextualiseer**
Lees de repo om te weten wat relevant is voor Nathan: AI/tech, automation, ruimtevaart, ondernemerschap, finance, LinkedIn/outreach, België/Europa, agency business, SpaceX/ESA, persoonlijke groei.

**Stap 2 — Presenteer van minst naar meest interessant**

Structuur:
```
# Dagelijkse Mail — [datum]

## Niet interessant
[Spam, Google-notificaties, reclame, irrelevante secties] — één zin per item, geen verdere uitleg.

## Goed om te weten
[Wereld nieuws of info die handig kan zijn maar niet direct relevant] — 2–4 zinnen per item, compact.

## Relevant voor jou
[Nieuws over AI, tech, space, business, finance, automation, ondernemerschap — direct gelinkt aan Nathans projecten of ambities] — per item een korte kop + 3–6 zinnen met de kernfeiten. Bewaar alle cijfers, namen en concrete details.

---
Oefening van vandaag
[1 scenario uit frame-control-druk.md, max 3 regels]
```

**Regels:**
- Altijd filteren op relevantie — maar als iets écht relevant is, geef dan de volledige tekst of het volledige relevante stuk letterlijk
- Cijfers, bedragen en concrete feiten altijd bewaren
- Reclame, community-secties, kruiswoordpuzzels, Open House → maximaal 1 zin of weglaten
- Nieuwsbrieven zoals Morning Brew: alleen de echte nieuwsartikelen, niet de fluff
- "Écht relevant" = direct gelinkt aan Nathans actieve projecten, ruimtevaartambities, AI/automation, finance/investeren, of ondernemerschap

## Start van elke sessie
Als ik een nieuwe sessie begin, doe dan het volgende:
1. Lees `memory/projects.md` voor de huidige projectstatus
2. Lees `memory/log.md` voor wat er recent gebeurd is
3. Vraag: "Wat gaan we vandaag aanpakken?"

## Upload / bestanden aanmaken — VERPLICHT
Telkens wanneer ik vraag om iets te uploaden, aan te maken of op te slaan in de repo:
1. Maak het bestand aan op de feature branch
2. Commit en push naar de feature branch
3. **Maak direct een PR aan en merge die onmiddellijk naar `main`**
4. Geen extra bevestiging nodig — gewoon doen

## Einde van elke sessie — VERPLICHT
Na elke sessie waarin bestanden zijn aangemaakt of gewijzigd:
1. Commit en push alle wijzigingen naar de huidige branch
2. **Merge de PR onmiddellijk naar `main`** — dit zorgt ervoor dat kennis beschikbaar is in de volgende sessie
3. Zonder merge naar main zijn nieuwe bestanden onzichtbaar in toekomstige sessies
4. Controleer altijd of er nog open PRs zijn die nog niet gemerged zijn — merge die ook
