import type { Config } from "tailwindcss";

const config: Config = {
  content: [
    "./app/**/*.{js,ts,jsx,tsx,mdx}",
    "./components/**/*.{js,ts,jsx,tsx,mdx}",
  ],
  theme: {
    extend: {
      colors: {
        // Brand — synced with lib/core/theme/app_colors.dart
        primary: {
          DEFAULT: "#E8787A",
          light: "#F4A9AB",
          dark: "#CC5C5E",
        },
        secondary: {
          DEFAULT: "#5BBCB4",
          light: "#8DD4CE",
          dark: "#3A9A92",
        },
        accent: {
          DEFAULT: "#F5C15A",
          light: "#F8D68A",
          dark: "#D4A23B",
        },
        ink: {
          DEFAULT: "#2D2D3A",
          secondary: "#6E6E82",
          hint: "#B0B0C0",
        },
        bg: "#FAF8F6",
        surface: "#FFFFFF",
        divider: "#EEEEF2",
      },
      fontFamily: {
        sans: [
          "Plus Jakarta Sans",
          "-apple-system",
          "BlinkMacSystemFont",
          "Segoe UI",
          "sans-serif",
        ],
      },
    },
  },
  plugins: [],
};

export default config;
