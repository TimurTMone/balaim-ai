# Screens to redesign

Seven screens, in priority order. Redesign the top two first — they are the demo money-shots. The rest wait.

---

## 1. Today (home) — PRIMARY

**File**: `lib/features/today/views/today_screen.dart`
**Current state**: `design/current-state/01-today.png`

**Job-to-be-done**: In 2 seconds, tell me what's worth my attention for the currently-selected household member, and give me one clear next action.

**Must contain**:
- A compact greeting ("Altair, 18 months" for baby, "Sarah, 34 years" for adult)
- Horizontal member avatar switcher (role-colored rings, selected state prominent)
- Quick Access grid: Lab Results · Doctors · Moments (or Meds for adult) · Log Vitals
- 3–4 context cards (Focus of the week, Today's activity/health action, Is this normal? with AI CTA, Daily insight)
- AppBar: gear (settings) + notification bell
- Bottom nav: 5 tabs

**Must handle gracefully**:
- Baby selected (current experience)
- Adult selected (health-coach experience — different cards, no "tummy time")
- Pregnant selected (week-based)

**Not allowed**:
- Dense chart-first layouts
- More than 4 primary cards below the quick-access grid

---

## 2. Balam AI chat (3am mode) — PRIMARY

**File**: `lib/features/ai/views/ai_chat_screen.dart`
**Current state**: capture needed — currently default-theme chat bubbles.

**Job-to-be-done**: When I'm scared at 3am with a sick baby or a scary glucose reading, let me ask one question and get a calm, direct answer plus a clear "consult a doctor" CTA if needed.

**Must contain**:
- A member-selector chip above the input: "Asking about: Altair ▼" so parents never confuse who the conversation is about
- Auto-dark-mode between 23:00 and 05:00 local time
- 18pt font size in 3am mode (vs 15pt day mode)
- Red-flag triage banner below messages when urgency ≥ high: title + body + two buttons ("Consult a doctor" / "Call 112" for emergencies)
- No suggestion chips in 3am mode (user wants focus, not choices)
- Send button is a large circle; haptic on send

**Two variants in the mockup**: day mode (light, normal font, with chips) + 3am mode (dark, large font, no chips, scared mom UX).

---

## 3. Household / My Family

**File**: `lib/features/auth/views/children_screen.dart` (will be relabeled)
**Current state**: capture needed — currently "My Children" list.

**Job-to-be-done**: Let me see everyone I track, their health pulse at a glance, and add/remove members without friction.

**Must contain**:
- List of members as rich cards (avatar, name, role badge, age, 1-line health pulse: "Normal range this week" or "BP trending high")
- Tap a card → sets active member across the app
- "+ Add family member" button that opens a sheet with role chips: Me / Child / Partner / Mom / Dad / Grandma / Grandpa / Sibling / Other
- Edit / delete affordance per card (swipe-to-reveal or kebab menu)

---

## 4. Lab Results

**File**: `lib/features/lab/views/lab_analysis_screen.dart`
**Current state**: capture needed. Currently shows Altair's CBC + iron panel with parameter list + color-coded pills.

**Job-to-be-done**: Show me what's normal, what's borderline, and what's flagged — for the selected member — and let me open the original PDF.

**Must contain**:
- Pills-row summary at top: `# normal` · `# borderline` · `# flagged`
- Body: list of parameters with traffic-light icons (green / amber / red), name, value + unit, tap to expand friendly 1-sentence explanation
- Prominent "View original lab report (PDF)" button near the top (not buried)
- Patient info card showing the currently-selected member

---

## 5. Track Vitals (adult)

**File**: new — no current state. Closest analog: `lib/features/journey/views/tracking_sheet.dart` (the modal sheet with sliders).

**Job-to-be-done**: Let Dad's daughter log his glucose/BP in 2 seconds without opening another app.

**Must contain**:
- Big numbers (e.g., "120 / 80" for BP) with subtle trend arrows
- Toggle: fasting vs post-meal for glucose
- "Log" button = full-width, haptic on save
- Last-reading context line ("Last glucose: 118 mg/dL — 2 days ago")

---

## 6. Consult a doctor

**File**: `lib/features/professionals/views/professionals_screen.dart`
**Current state**: capture needed. Currently a list of doctor cards.

**Job-to-be-done**: Let me pick a trusted doctor who speaks my language and start a consult in one tap.

**Must contain**:
- Doctor cards: photo, name, specialty, languages (EN/RU/KY flags), response-time SLA, price
- One primary CTA: "Start consult"
- Specialty filter chips at top

---

## 7. Onboarding (3 screens)

**Files**: `lib/features/auth/views/onboarding_screen.dart`, `signup_screen.dart`, `stage_selection_screen.dart`
**Current state**: capture needed.

**Job-to-be-done**: Get a new user from App Store download to their first meaningful interaction in under 90 seconds.

**Must contain**:
- Screen 1: Trilingual welcome, one "Get started" CTA, language toggle visible in the corner
- Screen 2: Quick stage quiz — feels like picking a mood, not filling a form (pregnant / newborn / toddler / already parenting multiple / just curious / focused on my own health)
- Screen 3: Short sign-up (autofilled demo values visible; tap to clear)

---

## Scope cap

Ship v1 of #1 and #2 first. That's the Today screen + 3am chat. Stop after #2, wait for feedback, then unlock the next.
