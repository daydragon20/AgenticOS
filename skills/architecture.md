# Skill: Architectuurplan maken

## Doel
Maak een SVG-plattegrond op basis van een grondplan (constante) en variabele eisen (meubels, functies, wensen).

## Wanneer gebruik je deze skill
- Gebruiker geeft een grondplan (afbeelding of tekst met afmetingen)
- Gebruiker geeft een lijst van eisen: meubels, zones, looproutes, lichtinval, etc.
- Output is altijd een SVG-bestand dat direct te openen is in een browser, Figma of Inkscape

---

## Stap 1 — Grondplan verwerken (de constante)

### Als input een afbeelding is:
- Analyseer de afbeelding visueel
- Noteer: buitenmaten, muren, deuren (en draairichting), ramen, vaste elementen (trappen, pilaren, leidingen)
- Vraag bevestiging als afmetingen onduidelijk zijn: "Ik zie een kamer van ongeveer 4x5m — klopt dat?"

### Als input tekst/afmetingen zijn:
- Gebruik de opgegeven maten direct
- Veronderstel standaard muurdikte van 15cm tenzij anders opgegeven
- Deuren: standaard 90cm breed, ramen: standaard 120cm breed tenzij anders

### SVG schaal:
- Gebruik altijd 1 meter = 50px als standaardschaal
- Vermeld de schaal rechtsonder in de SVG: `Schaal: 1m = 50px`

---

## Stap 2 — Eisen verwerken (de variabelen)

Eisen kunnen zijn:
- **Meubels**: naam + eventuele afmetingen (bv. "bank 220x90cm", "bureau", "2-persoonsbed")
- **Zones**: functionele gebieden (bv. "werkhoek", "slaapzone", "eetruimte")
- **Constraints**: "bureau bij raam", "bed niet tegen buitenmuur", "looproute naar deur vrijhouden"
- **Sfeer/gebruik**: "rustige slaapkamer", "open kantoor", "keuken-woonkamer combinatie"

### Standaard meubelmaten (als geen maat opgegeven):
| Meubel | Breedte | Diepte |
|---|---|---|
| Bank (2-zit) | 160cm | 90cm |
| Bank (3-zit) | 220cm | 90cm |
| Eenpersoonsbed | 90cm | 200cm |
| Tweepersoonsbed | 160cm | 200cm |
| Bureau | 140cm | 70cm |
| Eettafel (4p) | 120cm | 80cm |
| Kledingkast | 120cm | 60cm |
| TV-meubel | 150cm | 45cm |
| Nachtkastje | 50cm | 40cm |

---

## Stap 3 — SVG genereren

### Structuur van de SVG:
```svg
<svg xmlns="http://www.w3.org/2000/svg" width="[breedte]" height="[hoogte]" viewBox="0 0 [w] [h]">
  <!-- Achtergrond -->
  <rect width="100%" height="100%" fill="#f9f6f0"/>

  <!-- Muren -->
  <g id="muren" stroke="#2c2c2c" stroke-width="8" fill="#2c2c2c">
    <!-- rechthoeken of lijnen per muur -->
  </g>

  <!-- Ramen (blauwe streep in muur) -->
  <g id="ramen" stroke="#89b4d1" stroke-width="4">
    ...
  </g>

  <!-- Deuren (boog + lijn) -->
  <g id="deuren" stroke="#2c2c2c" stroke-width="2" fill="none">
    ...
  </g>

  <!-- Meubels -->
  <g id="meubels">
    <!-- Elk meubel: gekleurde rechthoek + label -->
    <rect x="..." y="..." width="..." height="..." fill="#d4e8c2" stroke="#5a8c42" stroke-width="1.5" rx="3"/>
    <text x="..." y="..." font-size="11" text-anchor="middle" fill="#2c2c2c">Bank</text>
  </g>

  <!-- Schaal + titel -->
  <text x="10" y="[hoogte-10]" font-size="10" fill="#888">Schaal: 1m = 50px</text>
</svg>
```

### Kleurcode meubels:
| Type | Vulkleur | Randkleur |
|---|---|---|
| Zitmeubels | `#d4e8c2` | `#5a8c42` |
| Slaapmeubels | `#cce0f5` | `#3a7abf` |
| Werkmeubels | `#fdeec8` | `#c8960a` |
| Opbergmeubels | `#e8ddf5` | `#7a5abf` |
| Tafels | `#f5e6d8` | `#bf7a3a` |

### Deuren tekenen:
- Lijn van deurpunt naar openingspunt
- Kwartcirkel (arc) die de draairichting toont
- Altijd aangeven welke kant de deur opengaat

---

## Stap 4 — Validatie voor je levert

Controleer voor je de SVG geeft:
- [ ] Alle opgegeven meubels staan in het plan
- [ ] Geen meubel overlapt een muur of deur
- [ ] Looproutes zijn minstens 80cm breed (40px)
- [ ] Constraints uit de eisen zijn gerespecteerd
- [ ] Schaalvermelding staat erin
- [ ] SVG opent correct in een browser (geen syntax fouten)

---

## Stap 5 — Levering

1. Geef de volledige SVG-code in een codeblok
2. Sla het bestand op als `[ruimtenaam]-plan.svg` in de huidige map
3. Geef een korte tekstuele samenvatting:
   - Welke keuzes je gemaakt hebt
   - Welke constraints je gevolgd hebt
   - Eventuele aandachtspunten (bv. "bureau staat bij raam maar daglicht komt van links")

---

## Iteraties

Na feedback van de gebruiker:
- Pas alleen de variabelen aan (meubelpositie, andere meubels)
- Verander de muren/grondplan NIET tenzij expliciet gevraagd
- Geef altijd een nieuwe volledige SVG (niet alleen de diff)

---

## Voorbeeld prompt die deze skill triggert

> "Ik heb een kamer van 4x5m met een deur op de korte muur links en een raam op de lange muur rechts. Ik wil er een bureau bij het raam, een tweepersoonsbed, en een kledingkast in."

> "Hier is een foto van mijn grondplan. Ik wil een bank, tv-meubel tegenover de bank, en een eettafel voor 4 personen."
