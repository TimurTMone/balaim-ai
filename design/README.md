# Balam.AI — Design Redesign Workspace

This folder is a self-contained brief for a redesign session. Hand it to a fresh Claude Code session (or any design AI) and you'll get iteration-ready screen designs without having to paste context every time.

## How to use

**If using Claude Code** (recommended, because it can see the Flutter source):

1. Open this repo root in a new Claude Code session.
2. Paste the contents of `PROMPT.md` as your first message.
3. Claude reads `BRIEF.md`, `DESIGN_SYSTEM.md`, `CONSTRAINTS.md`, `SCREENS.md`, `FLOWS.md` and the current-state screenshots, then generates iteration-ready designs into `output/`.

**If using v0.dev / Galileo / Figma AI** (no Flutter integration):

1. Copy the fenced prompt block from `~/.claude/plans/you-are-senior-ai-noble-star.md` (the existing design brief) — that one is web-tool-shaped.
2. This folder is for the Claude-Code path.

## What gets produced

Every design iteration lands in `output/` as two files per screen:

- `{screen}_v{n}.html` — a rendered mockup you can preview in a browser
- `{screen}_v{n}.dart` — Flutter widget code (ready-to-drop) matching the mockup

Name convention: `today_v1.html` / `today_v1.dart`, then `_v2`, etc.

## Structure

```
design/
├── README.md          ← this file
├── PROMPT.md          ← paste this as the first message to Claude Code
├── BRIEF.md           ← product + positioning + target user
├── DESIGN_SYSTEM.md   ← color tokens, typography, radii, shadows
├── CONSTRAINTS.md     ← what must not break (trilingual, a11y, Flutter dep)
├── SCREENS.md         ← list of screens to redesign with JTBD
├── FLOWS.md           ← user journeys to preserve
├── current-state/     ← screenshots of the app TODAY (for reference)
└── output/            ← generated designs land here
```

## Ground rules for the designer session

- Do NOT edit anything outside `design/output/`. The main `lib/` is off-limits.
- Do NOT generate assets larger than 200 KB per file (keeps git clean).
- Every design must be trilingual-safe (text lengths vary 1.3× in RU/KY).
- Every design must work in BOTH light and dark mode.
- Prefer editing an existing HTML mockup over creating a new one when iterating.
