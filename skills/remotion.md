# Skill: Remotion Video Productie

## Wat is Remotion
Remotion = video's maken met React + TypeScript. Je schrijft componenten, Remotion rendert ze naar MP4.
Ideaal voor: geanimeerde stats, social media clips, intro's, data-driven video's voor ETF.

## Nieuw project starten
```bash
cd C:\Users\natha
npx create-video@latest
# Kies: "Blank" template voor maximale controle
# Projectnaam: etf-videos (of specifiek per video)
cd etf-videos
npm install
npm run dev
# Preview: http://localhost:3000
```

## Projectstructuur
```
etf-videos/
├── src/
│   ├── Root.tsx          ← registreer hier alle composities
│   ├── index.ts          ← entry point
│   └── videos/
│       └── MijnVideo.tsx ← de video component
├── public/               ← afbeeldingen, fonts, audio
└── package.json
```

## Basis video component
```tsx
import { AbsoluteFill, useCurrentFrame, interpolate } from 'remotion';

export const MijnVideo = () => {
  const frame = useCurrentFrame();
  const opacity = interpolate(frame, [0, 30], [0, 1]);

  return (
    <AbsoluteFill style={{ backgroundColor: '#fff', opacity }}>
      <h1>Hallo ETF!</h1>
    </AbsoluteFill>
  );
};
```

## Compositie registreren (Root.tsx)
```tsx
import { Composition } from 'remotion';
import { MijnVideo } from './videos/MijnVideo';

export const RemotionRoot = () => (
  <>
    <Composition
      id="MijnVideo"
      component={MijnVideo}
      durationInFrames={150}
      fps={30}
      width={1920}
      height={1080}
    />
  </>
);
```

## Renderen naar MP4
```bash
npx remotion render MijnVideo out/video.mp4
```

## Formaten voor ETF
| Platform | Resolutie | FPS | Duur |
|----------|-----------|-----|------|
| Instagram Reels | 1080x1920 | 30 | max 90s |
| Instagram Feed | 1080x1080 | 30 | max 60s |
| YouTube | 1920x1080 | 30/60 | vrij |
| LinkedIn | 1920x1080 | 30 | max 10min |

## Handige Remotion helpers
```tsx
// Fade in/out
const opacity = interpolate(frame, [0, 20, 80, 100], [0, 1, 1, 0]);

// Inzoomen
const scale = interpolate(frame, [0, 30], [0.8, 1]);

// Tekst letter voor letter
const letters = "ETF".slice(0, Math.floor(frame / 5));

// Wacht X frames voor animatie start
const delayedFrame = Math.max(0, frame - 30);
```

## Google Drive integratie
- Exporteer renders naar `C:\Users\natha\` en upload handmatig naar Drive
- Of gebruik n8n workflow: render → upload via Google Drive node

## Tips
- Gebruik `staticFile('naam.png')` voor afbeeldingen uit de `public/` map
- Fonts laden via `@remotion/google-fonts` of lokale font-files
- Splits lange video's op in losse composities, combineer met `<Series>`
