# Skill: Website Automation Business (n8n + VideoDB)

## Context
Nathan bouwt automatisch websites voor klanten via n8n. Hij werkt solo, leert terwijl hij bouwt,
en de basisstructuur staat maar is nog in ontwikkeling. Doel: schaalbaarheid zonder meer tijd te investeren.
Extra tool: VideoDB voor video-workflows in klantprojecten.

## n8n Setup
- Draait **lokaal** op Nathan's pc
- Start: `n8n start` of `npx n8n`
- Interface: `http://localhost:5678`
- Externe webhooks: gebruik ngrok (`ngrok http 5678`)

---

## De kern van de business: automatisch websites bouwen

### Hoe het werkt (concept)
```
Klant vult formulier in
        ↓
n8n pakt de data op (webhook)
        ↓
n8n genereert website-structuur / content
        ↓
n8n plaatst bestanden of stuurt naar hosting
        ↓
Klant krijgt bevestiging per mail
```

### Workflow 1: Klant onboarding
```json
{
  "name": "Klant Onboarding",
  "nodes": [
    {
      "type": "n8n-nodes-base.webhook",
      "name": "Klant Formulier",
      "parameters": { "path": "nieuwe-klant", "httpMethod": "POST" }
    },
    {
      "type": "n8n-nodes-base.set",
      "name": "Data Structureren",
      "parameters": {
        "values": {
          "string": [
            { "name": "klantnaam", "value": "={{ $json.naam }}" },
            { "name": "email", "value": "={{ $json.email }}" },
            { "name": "websiteType", "value": "={{ $json.type }}" }
          ]
        }
      }
    },
    {
      "type": "n8n-nodes-base.gmail",
      "name": "Bevestiging Sturen",
      "parameters": {
        "to": "={{ $json.email }}",
        "subject": "Jouw website is in aanbouw!",
        "message": "Hoi {{ $json.naam }}, we zijn gestart met jouw website. Je hoort snel van ons."
      }
    }
  ]
}
```

### Workflow 2: Website content genereren (met AI)
Gebruik de **HTTP Request** node om Claude API aan te roepen:
```
Trigger → Data ophalen → HTTP Request (Claude API) → Gegenereerde content opslaan → Bevestiging
```
HTTP Request config:
- URL: `https://api.anthropic.com/v1/messages`
- Method: POST
- Headers: `x-api-key: [jouw API key]`, `anthropic-version: 2023-06-01`
- Body: `{ "model": "claude-sonnet-4-6", "max_tokens": 1024, "messages": [...] }`

---

## VideoDB Integratie

### Wat is VideoDB
VideoDB is een API voor het opslaan, verwerken en doorzoeken van video's. Gebruik je als klanten
video's nodig hebben op hun website, of als je video-pipelines automatiseert.

### Basis workflow met VideoDB
```
Video upload (klant of jij)
        ↓
n8n stuurt video naar VideoDB API
        ↓
VideoDB verwerkt + geeft streaming URL terug
        ↓
URL wordt opgeslagen / naar klant gestuurd
```

### n8n HTTP Request naar VideoDB
```
Method: POST
URL: https://api.videodb.io/video/upload
Headers:
  x-api-key: [jouw VideoDB key]
Body:
  { "url": "https://link-naar-video.mp4" }
```
Response bevat `video_id` en `stream_url` — sla die op voor de klant.

---

## Veelgebruikte nodes
| Node | Gebruik in jouw business |
|------|--------------------------|
| Webhook | Klantformulier trigger |
| Gmail | Bevestigingen, updates naar klanten |
| HTTP Request | Claude API, VideoDB API, externe tools |
| Google Drive | Bestanden opslaan voor klanten |
| Set | Data omvormen tussen stappen |
| IF | Verschillende website-types anders behandelen |
| Code (JS) | Complexe logica (tekst genereren, data manipuleren) |
| Schedule Trigger | Wekelijkse rapportage, automatische checks |

---

## Business workflow overzicht
```
[KLANT]
   ↓ formulier invullen
[WEBHOOK in n8n]
   ↓
[DATA VERWERKEN] → type website bepalen
   ↓
[CONTENT GENEREREN] → Claude API of templates
   ↓
[VIDEO (optioneel)] → VideoDB als klant video wil
   ↓
[OPSLAAN] → Google Drive of hosting
   ↓
[BEVESTIGING] → Gmail naar klant
```

---

## Volgende stappen voor de business (bouwvolgorde)
1. [ ] Klantformulier + webhook live zetten
2. [ ] Onboarding e-mail automatiseren
3. [ ] Website template systeem bouwen (n8n genereert structuur)
4. [ ] Claude API integreren voor content
5. [ ] VideoDB koppelen voor video-klanten
6. [ ] Factuur / betaling automatiseren

---

## Tips voor Nathan (solo, lerend)
- Bouw één workflow volledig af voor je de volgende start
- Test elke node met voorbeelddata voor je live gaat
- Sla webhook URLs op in `automations/webhooks.md`
- Gebruik **Error Trigger** node zodat fouten een mail sturen naar jezelf
- Ngrok URL verandert elke keer — gebruik n8n cloud als je stabiele webhooks nodig hebt
