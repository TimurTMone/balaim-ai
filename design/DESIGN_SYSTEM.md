# Design System Tokens

These are the source of truth. Pulled from `lib/core/theme/app_colors.dart`. Do not introduce new brand colors without justification.

## Color palette

| Token | Hex | Use |
|---|---|---|
| `primary` | `#E8787A` | Coral. Brand anchor. Baby/child accent. |
| `primaryDark` | `#BE5053` | Coral deep. For gradients + pressed states. |
| `secondary` | `#5E8CF7` | Soft blue. Trust. Adults. Doctors. |
| `secondaryDark` | `#3A6EE2` | Blue deep. Headers over photos. |
| `accent` | `#F5BC5C` | Honey. Warmth. Highlights. Gold nav/badges. |
| `accentDark` | `#D99D30` | Honey deep. |
| `success` | `#34C759` | Green. Normal lab values. Positive triage. |
| `warning` | `#F5A623` | Amber. Borderline values. Medium urgency. |
| `error` | `#E53935` | Red. Out-of-range values. Emergency triage. |
| `surface` | `#FFFFFF` | Light mode card / sheet. |
| `background` | `#FAF7F5` | Light mode canvas (warm off-white, NOT pure white). |
| `divider` | `#E5E5EA` | Hairline separators. |
| `textPrimary` | `#1C1C1E` | Headlines, body. |
| `textSecondary` | `#4A4A4A` | Sub-labels. |
| `textHint` | `#8E8E93` | Captions, placeholders. |

### Role-based accents (household member switcher)

| Role | Ring color |
|---|---|
| `child` | `primary` (coral) |
| `self` | `secondary` (blue) |
| `partner` | `error` (red — intentional, "love urgency") |
| `mother`, `grandmother` | `accent` (honey) |
| `father`, `grandfather` | `secondaryDark` (deep blue) |
| other | `textSecondary` |

## Typography

- **Font**: SF Pro Display on iOS, Inter fallback on Android/web.
- **Headlines**: 800 weight, -0.4 letter-spacing at ≥28pt, tight line-height (1.15).
- **Body**: 400/500 weight, 1.45 line-height, 15pt default.
- **Minimum size**: 12pt. Captions 11pt allowed for footers only.
- **Trilingual note**: Russian and Kyrgyz set wider than English at the same point size — design for +20% width at every headline.

## Spacing scale

4 / 8 / 10 / 12 / 14 / 16 / 20 / 24 / 32 / 48. Use the scale. Don't invent `17pt`.

## Radii

- **Primary radius** (cards, tiles, buttons): **18pt**
- **Secondary radius** (chips, inputs): **14pt**
- **Modal sheets**: **24pt** top-only
- **Pills** (small selectors): **12pt** or full-round

## Elevation

No grey shadows. All shadows are **tinted with the element's dominant color at 25% alpha**:

```
boxShadow: [
  BoxShadow(
    color: gradient.first.withValues(alpha: 0.28),
    blurRadius: 14,
    offset: const Offset(0, 6),
  ),
]
```

## Iconography

- **Style**: Rounded (Material Symbols Rounded OR SF Symbols). Never sharp-angle icons.
- **Sizes**: 24pt default, 20pt inline-with-text, 32pt hero.
- **Two-tone permitted** for hero icons — NEVER for navigation or list items.

## Motion

- **Tap feedback**: scale-down to 0.97 over 100ms, haptic light impact on press, medium impact on success.
- **Page transitions**: iOS push (horizontal slide, 280ms).
- **Success state**: a 400ms check-mark draw-on OR a 1× scale pulse. Never confetti on medical data.
- **Red-flag arrival**: 200ms slide-down from top + 1 haptic-notification.

## Dark mode

Every design must render in light and dark. Swap rules:

| Light | Dark |
|---|---|
| `background #FAF7F5` | `#0E1116` |
| `surface #FFFFFF` | `#181C22` |
| `textPrimary #1C1C1E` | `#F5F5F5` |
| `textSecondary #4A4A4A` | `#C0C0C0` |
| `divider #E5E5EA` | `rgba(255,255,255,0.12)` |

All brand colors stay identical — they're already calibrated for both modes.
