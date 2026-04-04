# Balam.AI — Landing Page

Marketing site and waitlist for Balam.AI. Built with Next.js 15, Tailwind CSS, TypeScript.

## Run Locally

```bash
npm install
npm run dev
# open http://localhost:3001
```

## Build

```bash
npm run build
npm start
```

## Deploy

**Cloudflare Pages:**
1. Connect this repo subdirectory (`web-landing`) in Cloudflare Pages dashboard
2. Build command: `npm run build`
3. Build output: `.next`
4. Node version: 20

**Vercel:**
1. Import repo in Vercel dashboard
2. Root directory: `web-landing`
3. Deploys automatically on push

## Structure

```
web-landing/
├── app/
│   ├── layout.tsx        # Root layout + SEO metadata
│   ├── page.tsx          # Home page (all sections)
│   ├── globals.css       # Tailwind + brand styles
│   ├── robots.ts         # /robots.txt
│   ├── sitemap.ts        # /sitemap.xml
│   └── api/
│       └── waitlist/     # Waitlist signup endpoint
├── components/
│   ├── Navbar.tsx
│   ├── Hero.tsx
│   ├── Pillars.tsx
│   ├── Features.tsx
│   ├── Waitlist.tsx
│   ├── FAQ.tsx
│   └── Footer.tsx
└── tailwind.config.ts    # Brand colors synced with Flutter app
```

## Brand Colors

Synced with `../lib/core/theme/app_colors.dart`:
- Primary: `#E8787A` (coral)
- Secondary: `#5BBCB4` (teal)
- Accent: `#F5C15A` (gold)

## Wiring the Waitlist

`app/api/waitlist/route.ts` currently logs to console. Replace with:
- Firestore `waitlist` collection, or
- Airtable/Google Sheets API, or
- Loops/ConvertKit/Mailchimp
