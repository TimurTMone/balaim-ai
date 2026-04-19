# Constraints — what the redesign must respect

## Technical

- **Stack**: Flutter (Dart 3.11, Riverpod state). New designs MUST translate cleanly to Flutter widgets using existing packages. See `pubspec.yaml` — do NOT propose designs that require new packages without justifying why.
- **Existing packages you can rely on**:
  - `google_fonts` (for SF Pro fallbacks)
  - `flutter_svg` (for inline SVGs)
  - `cached_network_image` (for avatars)
  - `lottie` (for micro-animations — use sparingly)
  - `fl_chart` (for any charts — please use it, don't introduce another chart lib)
- **No new dependencies** unless the feature genuinely can't be built without one.
- **Minimum iOS**: 16.0 (set in Xcode project). Minimum Android: API 21.

## Trilingual

- Languages: **English (en)**, **Russian (ru)**, **Kyrgyz (ky)**.
- Localization source-of-truth: `lib/l10n/app_en.arb` (+ `ru.arb`, `ky.arb`). All user-facing text in the redesign goes through `L.of(context).xxx`.
- **Text expansion**: Russian and Kyrgyz run **20–30% longer** than English at the same point size. Do not hard-code widths that break at RU/KY. Prefer `Flexible`, `Expanded`, `maxLines: 2`, ellipsis overflow.
- **New l10n keys**: list them at the top of the generated Dart file in a comment block; do NOT add them to the ARB files — that's my job.
- Script differences: Cyrillic and Latin mix fine typographically. Use the same font stack.

## Accessibility

- **Minimum tap target**: 44×44pt. Smaller is a bug.
- **Contrast**: 4.5:1 for body text, 3:1 for large text (WCAG AA). All brand tokens already pass.
- **Semantics**: every custom-painted or non-standard button needs a `Semantics(label: ...)` wrapper.
- **Dynamic type**: designs must survive iOS user scaling up to 130%. If a layout breaks, redesign it.
- **Haptics**: every primary tap fires `HapticFeedback.lightImpact`; every save/success fires `HapticFeedback.mediumImpact`.

## Dark mode

- Light AND dark are first-class. Every mockup ships both. Not "dark mode coming later."

## Data & flow

- **Active member**: the household member switcher on Today is the active-member setter. Labs, tracking, AI chat, consults all scope to `profile.selectedMember`. Your designs must handle "selected member = baby" vs "selected member = adult" variants for Today and any health screen.
- **No hallucinated data**: if you show numbers in a mockup (e.g., glucose 120 mg/dL), note that they're illustrative in a comment.
- **Empty states**: every list screen needs an illustrated empty state. Don't ship "Nothing here yet."

## What you must NOT change

- **Bottom nav order**: Today · Balam AI · Community · Market · My Child (5 tabs).
- **Brand name**: Balam.AI. Not "Balam Health" or "Family Health AI."
- **Primary color**: coral `#E8787A` stays the primary anchor.
- **The existing Tracking sheet** (modal from bottom with slider inputs) is working — don't propose replacing it. If you want to add new tracking types (BP, glucose), extend the sheet, don't rebuild it.
- **The 2nd-gen Cloud Function endpoints** (`balamChat`) — don't design flows that assume new endpoints without marking them "backend work required."

## Output format

- **HTML mockups**: single-file, inline CSS only, no build step, renders in Safari. Viewport 390×844.
- **Flutter widgets**: self-contained file under `design/output/`. Imports from existing `lib/core/theme/app_colors.dart` and `lib/l10n/app_localizations.dart` are allowed — that's the whole point of doing this inside the repo.
- **File size**: under 200 KB per output file.
