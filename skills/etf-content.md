# Skill: ETF Content & Remotion

## Context
Nathan maakt betaald short-form social media content voor ETF, een Belgisch bedrijf.
Doel: merkbekendheid en klanten aantrekken. Nathan werkt solo en leert terwijl hij bouwt.
Primaire tool: Remotion (React/JavaScript). Soms traditionele editors.

## Tone of Voice ETF
- Professioneel maar toegankelijk — geen corporate jargon
- Vertrouwenwekkend, Belgische context
- Kort en krachtig — geen lange lappen tekst
- Taal: Nederlands (tenzij anders gevraagd)

## Mijn werkflow per stuk content

### 1. Brief invullen (altijd eerst)
Voordat je iets maakt, beantwoord:
- Wat is het onderwerp?
- Welk platform? (Instagram Reels, LinkedIn, Facebook...)
- Wat wil ETF dat mensen doen na het zien? (bellen, website bezoeken, volgen...)
- Zijn er bestaande assets? (logo, kleuren, beeldmateriaal)

### 2. Script schrijven
Gebruik dit format voor short-form video:
```
HOOK (0-2s):     [Waarom stopt iemand met scrollen?]
WAARDE (2-12s):  [Kern boodschap, max 3 punten]
CTA (laatste 2s):[Wat moet de kijker doen?]
```

### 3. Remotion component bouwen
Zie onderstaande templates. Altijd starten vanuit bestaand project:
```bash
cd C:\Users\natha\etf-videos   # of waar het project staat
npm run dev                     # preview op localhost:3000
```

### 4. Exporteren & opslaan
```bash
npx remotion render [CompositeID] out/ETF_[platform]_[onderwerp]_[datum].mp4
```
Opslaan in Google Drive: `ETF/ → [jaar] → [maand]`

---

## Remotion — Kant-en-klare Templates

### Template 1: Tekst-animatie (Instagram Reel 9:16)
```tsx
import { AbsoluteFill, useCurrentFrame, interpolate, spring, useVideoConfig } from 'remotion';

export const ETFTextReel: React.FC<{ title: string; subtitle: string; cta: string }> = ({
  title, subtitle, cta
}) => {
  const frame = useCurrentFrame();
  const { fps } = useVideoConfig();

  const titleOpacity = interpolate(frame, [0, 20], [0, 1], { extrapolateRight: 'clamp' });
  const titleY = spring({ frame, fps, config: { damping: 12 }, from: 40, to: 0 });

  const subOpacity = interpolate(frame, [20, 40], [0, 1], { extrapolateRight: 'clamp' });
  const ctaOpacity = interpolate(frame, [60, 80], [0, 1], { extrapolateRight: 'clamp' });

  return (
    <AbsoluteFill style={{
      backgroundColor: '#0A0A0A',
      justifyContent: 'center',
      alignItems: 'center',
      flexDirection: 'column',
      padding: 60,
    }}>
      <h1 style={{
        color: '#FFFFFF',
        fontSize: 72,
        fontWeight: 800,
        textAlign: 'center',
        opacity: titleOpacity,
        transform: `translateY(${titleY}px)`,
        margin: 0,
      }}>
        {title}
      </h1>
      <p style={{
        color: '#AAAAAA',
        fontSize: 36,
        textAlign: 'center',
        opacity: subOpacity,
        marginTop: 24,
      }}>
        {subtitle}
      </p>
      <div style={{
        marginTop: 60,
        backgroundColor: '#FFFFFF',
        borderRadius: 8,
        padding: '16px 40px',
        opacity: ctaOpacity,
      }}>
        <span style={{ color: '#0A0A0A', fontSize: 28, fontWeight: 700 }}>{cta}</span>
      </div>
    </AbsoluteFill>
  );
};
```

Registreer in Root.tsx:
```tsx
<Composition
  id="ETFTextReel"
  component={ETFTextReel}
  durationInFrames={120}  // 4 seconden bij 30fps
  fps={30}
  width={1080}
  height={1920}
  defaultProps={{ title: 'Titel hier', subtitle: 'Ondertitel', cta: 'Neem contact op' }}
/>
```

### Template 2: Cijfers/statistieken animatie
```tsx
import { AbsoluteFill, useCurrentFrame, interpolate } from 'remotion';

export const ETFStat: React.FC<{ stat: string; label: string }> = ({ stat, label }) => {
  const frame = useCurrentFrame();
  const progress = interpolate(frame, [0, 60], [0, 1], { extrapolateRight: 'clamp' });
  // Animeer een getal van 0 naar eindwaarde
  const num = Math.floor(parseFloat(stat) * progress);

  return (
    <AbsoluteFill style={{ backgroundColor: '#0A0A0A', justifyContent: 'center', alignItems: 'center', flexDirection: 'column' }}>
      <span style={{ color: '#FFF', fontSize: 120, fontWeight: 900 }}>{num}+</span>
      <span style={{ color: '#AAA', fontSize: 40 }}>{label}</span>
    </AbsoluteFill>
  );
};
```

---

## Formaten per platform
| Platform | Resolutie | FPS | Max duur | Ideale duur |
|----------|-----------|-----|----------|-------------|
| Instagram Reels | 1080×1920 | 30 | 90s | 15-30s |
| Instagram Feed | 1080×1080 | 30 | 60s | 10-15s |
| LinkedIn | 1920×1080 | 30 | 10min | 30-90s |
| Facebook | 1080×1920 | 30 | 60s | 15-30s |

---

## Captions schrijven

### Instagram Reel caption
```
[Hook — eerste zin = reden om te stoppen]

[2-3 zinnen kern boodschap]

[Call-to-action]

#ETF #[Sector] #BelgischBedrijf #[Niche] #[Onderwerp]
```

### LinkedIn post
```
[Professionele opening met een inzicht of vraag]

[3-5 zinnen waarde — wat leert de lezer?]

[Afsluiting + zachte CTA (comment, like, bezoek website)]
```

---

## Snelle checklist voor elke post
- [ ] Brief ingevuld (onderwerp, platform, CTA, assets)
- [ ] Script geschreven (hook, kern, CTA)
- [ ] Remotion component gebouwd of traditionele editor gebruikt
- [ ] Geëxporteerd met juiste resolutie
- [ ] Caption klaar met hashtags
- [ ] Opgeslagen in Google Drive met juiste naam
- [ ] Gelogd in `memory/log.md`

---

## Tips voor Nathan (solo, lerend)
- Bouw componenten modulair: maak losse blokken (tekst, stat, logo) die je hergebruikt
- Sla goed werkende animaties op als template — kopieer, pas aan
- Als iets te lang duurt in Remotion, doe de basis in een traditionele editor
- Vraag ETF altijd om feedback na de eerste versie — dat spaart revisies
