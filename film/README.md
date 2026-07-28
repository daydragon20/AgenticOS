---
date: 2026-07-28
type: index
tags: [film, aflevering, webgl, 3d, raymarching, fictie, nathan]
---

# 🎬 Film — afleveringen over Nathan

> Fictieve afleveringen die op de repo gebaseerd zijn, maar niets letterlijk overnemen. Alle dialoog is verzonnen; de omgeving, het ritme en de keuzes verwijzen naar wat er echt in dit brein staat.

## Afleveringen

| # | Titel | Duur | Bestand |
|---|-------|------|---------|
| 1 | **Stille Motor** — één dag, van 05:41 tot 23:26 | 30:00 | [`aflevering-01-stille-motor.html`](aflevering-01-stille-motor.html) |
| — | *archief: eerste 2D-versie* | 30:00 | [`archief-aflevering-01-2d.html`](archief-aflevering-01-2d.html) |

## Aflevering 1 — Stille Motor (3D)

**Wat het is:** één zelfstandig HTML-bestand van 30 minuten in 12 scènes. Elke scène is een **echte 3D-wereld**: geometrie die per beeldpunt geraymarcheerd wordt, met een perspectiefcamera die per shot beweegt. Geen video, geen afbeeldingen, geen externe bestanden.

**De 12 scènes**

| # | Tijd | Scène | Wereld |
|---|------|-------|--------|
| 1 | 05:41 | zijn kamer, boven de garage | kamer |
| 2 | 06:22 | het veld achter de tuin | veld |
| 3 | 07:05 | bureau, twee schermen | kamer |
| 4 | 08:30 | videogesprek, Antwerpen–Schilde | kamer |
| 5 | 10:15 | dezelfde stoel, andere strijd | kamer (regen) |
| 6 | 12:40 | de loods, drie dorpen verder | loods |
| 7 | 14:20 | de beek in het bos | beek |
| 8 | 16:02 | alles rood | kamer (alarm) |
| 9 | 18:47 | twee uur later | kamer (avond) |
| 10 | 21:10 | de vijver aan de rand van het dorp | vijver |
| 11 | 22:35 | beneden, één lamp aan | pianokamer |
| 12 | 23:26 | kamer, licht uit | kamer (nacht) |

**Zes 3D-werelden, allemaal in code gebouwd**
- **Kamer** — vloer, plafond, vier wanden met een echte raamopening, bureau met twee monitoren en een laptop op twee boeken, stoel, bed met deken en kussen, prikbord, plank met boeken, mok met oor, bureaulamp. Zeven lichtstemmingen (dageraad, ochtend, gesprek, regen, alarm, avondlamp, nacht).
- **Veld** — terrein uit ruis, gras als hoogteveld met windvlagen die er als golven over lopen, halmstructuur in de normaal, bomenrij aan de horizon, wandelende figuur.
- **Loods** — hal van 17 × 14 m, stellingen en pallets via domeinherhaling, hoge ramen als echte openingen, godsstralen die per punt getest worden tegen de raamopening, stof in de bundels, hanglampen, twee figuren.
- **Beek** — bedding met meanderende geul, wateroppervlak met meestromende golven, normalen daaruit, echte spiegeling via een tweede march, caustics op de bodem, schuim stroomafwaarts van elke steen, bomen met kronen, riet, gehurkte figuur.
- **Vijver** — waterplas die de hele hemel spiegelt, noorderlichtgordijnen, sterren, bergruggen aan de horizon, riet en een figuur aan de waterkant.
- **Pianokamer** — piano met klep, witte en zwarte toetsen, bank, notenblad, tapijt, staande lamp als warme puntbron met volumetrische gloed.

**Mensen** — één figuur uit capsules met vier poses (staan, lopen met loopcyclus, zitten, hurken), hoofd met haar, neus, oren, ogen en wenkbrauwen.

**Camera** — 48 shots in totaal, vier per scène. Elke shot is een echte beweging: dolly, kraan, push-in of travelling, met eigen brandpuntsafstand, plus handheld-ruis op positie, blikrichting en rol. Tussen shots harde cuts, tussen scènes een korte overvloeier.

**Licht en beeld** — zachte schaduwen (shadow marching), ambient occlusion, volumetrische bundels, mist per wereld, ACES-tonemap, vignet, korrel, letterbox 2.39:1.

**Bediening** — geen balk onderaan: alleen een dunne voortgangslijn. Bediening zweeft en verdwijnt na 2,6 s.
`space` pauze · `←/→` 15 s · `1/2/3` snelheid · `m` scènes · `c` ondertitels · `f` volledig scherm · knop *Kwaliteit* voor renderresolutie (45 / 60 / 80 / 100 %).

**Wat opzettelijk niet letterlijk uit de repo komt:** geen projectnamen, geen prijzen, geen bestaande zinnen. De partner heet Sander, de commissie is "september", het noorden blijft "het noorden".

**Zie ook:** [[Nathans Levensplan]] · [[Nathan Profiel]] · [[Business MOC]] · [[Framework AI]] · [[Dagelijkse Loop]]
