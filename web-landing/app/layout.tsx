import type { Metadata, Viewport } from "next";
import "./globals.css";

const siteUrl = "https://balam.ai";
const title = "Balam.AI — Your AI Parenting Companion";
const description =
  "From pre-pregnancy through the first two years. Personalized AI guidance, evidence-based baby development content, stage-matched community, and a curated marketplace for parents.";

export const metadata: Metadata = {
  metadataBase: new URL(siteUrl),
  title: {
    default: title,
    template: "%s · Balam.AI",
  },
  description,
  applicationName: "Balam.AI",
  keywords: [
    "pregnancy tracker",
    "baby app",
    "parenting app",
    "AI parenting",
    "baby development",
    "new moms",
    "mom community",
    "baby milestones",
    "pregnancy week by week",
  ],
  authors: [{ name: "AppAltai" }],
  creator: "AppAltai",
  publisher: "AppAltai",
  openGraph: {
    type: "website",
    url: siteUrl,
    title,
    description,
    siteName: "Balam.AI",
    locale: "en_US",
  },
  twitter: {
    card: "summary_large_image",
    title,
    description,
    creator: "@balamai",
  },
  robots: {
    index: true,
    follow: true,
    googleBot: {
      index: true,
      follow: true,
      "max-video-preview": -1,
      "max-image-preview": "large",
      "max-snippet": -1,
    },
  },
  icons: {
    icon: "/favicon.ico",
    apple: "/apple-touch-icon.png",
  },
};

export const viewport: Viewport = {
  width: "device-width",
  initialScale: 1,
  themeColor: "#E8787A",
};

export default function RootLayout({
  children,
}: Readonly<{ children: React.ReactNode }>) {
  return (
    <html lang="en">
      <head>
        <link
          rel="preconnect"
          href="https://fonts.googleapis.com"
        />
        <link
          rel="preconnect"
          href="https://fonts.gstatic.com"
          crossOrigin=""
        />
        <link
          href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap"
          rel="stylesheet"
        />
      </head>
      <body>{children}</body>
    </html>
  );
}
