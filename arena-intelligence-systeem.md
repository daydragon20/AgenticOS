# Arena Intelligence Systeem — "Niemand verrast mij"

*Referentiestuk voor AgenticOS. Het systeem dat je gegronde, Harvey-achtige confidence geeft: niet door alles te volgen, maar door jouw arena koud te kennen.*

---

## Het principe (lees eerst)

> Confidence komt van **vernauwen, niet verbreden.** Harvey kent niet de hele wereld — hij kent zíjn zaken koud. Zijn overtuiging is domein-diep, niet breedte-breed.
>
> Jouw valstrik: je curiosity cascade wil "overal van op de hoogte zijn." Dat is een firehose waar je nooit bovenop komt — en die jaagt je confidence wég. Hoe meer je probeert te volgen, hoe minder zeker je je voelt.
>
> **De zet:** negeer bewust 95% zodat je 5% volledig bezit. Diepte > breedte.

**Je arena (en niets daarbuiten als "must-know"):**
AI-automatisering · LinkedIn outreach · recruitment-tech · jullie directe concurrenten.

---

## De drie tiers (bewust klein gehouden)

### Tier 1 — Je arena (koud kennen)

**A. Tool-edge** — want jullie model is "de beste tools van het moment inzetten." Kies **één** bron, niet meer:
- *Future Tools* (Matt Wolfe) — 2×/week, gericht op nieuwe tools, met YouTube erbij. **Past bij jou** (leren via video). → futuretools.io
- *TLDR AI* — dagelijks, 5 min, compressie van het belangrijkste. Kies dit als je liever dagelijks-kort wilt dan video.

> Vuistregel uit het veld: 3–5 nieuwsbrieven is het maximum voor goede signaal-ruis. Jij houdt het bij **1 hier**.

**B. Concurrent-tracking** (gratis, nul onderhoud):
- **Google Alerts** op de namen: Spott, Elvatriks, Clay, PhantomBuster, HeyReach, Expandi (+ "LinkedIn outreach agency", "recruitment automation").
- **LinkedIn "Follow"** op de bedrijfspagina's én de oprichters van die concurrenten. Daar lekken hun strategie, nieuwe features en hiring uit.

### Tier 2 — De bredere wereld (alleen achtergrondruis)

Eén lichte bron, niet meer:
- *Techpresso* — gratis, elke weekochtend, < 4 min. Brede tech/business context.
- (Alternatief als je founder-craft wilt: *Lenny's Newsletter*, wekelijks.)

### Tier 3 — Parkeerinbox (je cascade-rem)

Alles wat interessant is maar **niet je pad van vandaag** → hier. Niet nu erin duiken. Op zondag bekijken en beslissen: bewaren, of weg.

---

## Het ritme (in je bestaande dagelijkse loop — geen nieuw systeem)

| Wanneer | Wat | Tijd |
|---------|-----|------|
| **Dagelijks** | Je "1 leuk/nieuwsgierig ding"-slot = skim **één** bron. Bounded. | 10 min |
| **Door de week** | Alerts + digest landen passief. Je jaagt niet, je leegt niet constant je inbox. | 0 |
| **Zondag (je review)** | Week doornemen → battle card bijwerken → parkeerinbox legen. | 15 min |

**Regel:** je gaat nooit "even alles inhalen". Wat je miste, miste je. Het systeem vangt wat telt.

---

## Je Battle Card (het geheime wapen)

Eén levende pagina. **Vóór elke belangrijke meeting lees je die.** Dat ís Harvey's voorbereiding — en het ontlast je werkgeheugen: de pagina is de confidence, niet je hoofd.

> Houd dit als apart bestand in AgenticOS en update het elke zondag. Hieronder de start, gevuld met wat al in jullie executive summary staat.

### Wie wij zijn
- **Categorie:** geen AI-startup, geen tool → *outsourced top-of-funnel team dat toevallig AI gebruikt.*
- **Vijand:** niet Lemlist/Expandi → de *spam-bende*: agencies die generieke berichten sturen vanaf het account van de recruiter zelf, met een verbrand profiel als gevolg.
- **Differentiator:** de klant koppelt nóóit zijn eigen LinkedIn-profiel. Geblokkeerd account = óns account, niet dat van de klant.
- **Niche fase 1:** Belgische tech/finance recruitmentbureaus, 3–15 mensen, plaatsingen €60k–€120k.

### Concurrenten (uit jullie doc — bijwerken bij elke beweging)
| Tool | Prijs | Zwakte die wij uitspelen |
|------|-------|--------------------------|
| Clay.com | €149–800/mo | Geen outreach, klant koppelt eigen profiel |
| PhantomBuster | €69–439/mo | Browser cookies → hoog detectierisico |
| HeyReach | €79/mo | Klant beheert zelf, eigen accounts |
| Expandi | €99/mo | Eigen profiel, geen recruitment-variant |
| **Spott** | *(invullen)* | *(invullen)* |
| **Elvatriks** | *(invullen)* | *(invullen)* |
| **Wij** | €1.500 setup + €1.500/mo | Managed service, klantprofiel nooit in gevaar |

### Recente bewegingen (laatste 30 dagen)
- *(elke zondag 2–3 puntjes uit je alerts hier)*

### Kant-en-klare zinnen (uit je hoofd kennen)
- "Jij koppelt nooit je eigen LinkedIn-profiel. Wordt een account geblokkeerd, dan is dat óns account — jouw 10 jaar connecties zijn nooit in gevaar."
- "Eén extra kandidaat per maand en je bent 5× break-even."
- "We zijn niet zoals Lemlist — die geven jou een tool. Wij zijn een outsourced outbound-team."

---

## Niveau-omhoog: laat het systeem zichzelf draaien (n8n)

Het hunten naar nieuws is precies wat jouw cascade triggert én energie kost. Los het op met je eigen stack: bouw een n8n-workflow die alles voor je samenvat, zodat er één digest landt in plaats van dat jij gaat zoeken.

**Architectuur (past op je bestaande Telegram/daily-report workflows):**
1. **Trigger:** schedule (dagelijks 07:30, of wekelijks zondag).
2. **Bronnen:** RSS van je gekozen nieuwsbrief + Google Alerts RSS-feeds + (later) concurrent-LinkedIn via een scrape-node.
3. **Claude API:** vat alles samen tot **5 bullets**: "wat veranderde er in mijn arena + 1 actie."
4. **Output:** Telegram of mail.

> n8n heeft hier een kant-en-klaar template voor (LinkedIn-concurrenten monitoren met AI). Goede startbasis om aan te passen.

**Voordeel:** bounded by design (de digest is eindig), nul hunt-effort, en het dogfoodt jullie eigen product. Dit is óók een fijne hyperfocus-build voor jou.

---

## De drie benen van confidence in de kamer

Dit systeem is **been 1**. Vergeet de andere twee niet:
1. **Je kent je arena koud** ← dit systeem.
2. **Je hebt déze meeting voorbereid** ← de battle card lezen vóór je binnenstapt.
3. **Je blijft kalm en zegt minder** ← je leiderscode (de pauze, één punt, dan stoppen).

Drie benen samen = Harvey's overtuiging, maar dan echt en bij jou passend.
