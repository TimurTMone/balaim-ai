# User flows to respect

Four canonical journeys the redesign must support without adding taps or friction. If a new design adds a step to any of these, push back.

---

## Flow 1 — "3am, baby has a fever, I'm alone"

**Trigger**: App open at 02:47. Baby is crying. Parent is exhausted.

1. Parent opens app → lands on Today (or wherever they left off).
2. Because time is 23:00–05:00, the Balam AI screen auto-enters 3am mode (dark, large font, no chips).
3. Parent types (or voice-dictates) "baby has 39.5 fever".
4. Claude replies in 1–2 sentences, calmly. If urgency ≥ high, a triage banner slides in under the message.
5. Banner has two buttons: "Consult a doctor" (opens Professionals filtered to pediatrics, $50 starting) + "Call 112" (tel: launch).

**Design must preserve**: zero "are you sure?" interstitials. The parent is already scared. Don't add friction.

---

## Flow 2 — "Dad's glucose was 220 fasting"

**Trigger**: Adult daughter wants to log Dad's glucose after his home test.

1. Open app → Today.
2. Tap Dad's avatar in the member switcher → whole screen rebuilds for Dad.
3. Tap "Log Vitals" tile in Quick Access → modal sheet, Blood Glucose selected.
4. Toggle: "fasting" → enter 220 → tap Log.
5. Haptic medium-impact on save. Banner appears: "220 fasting is elevated — let's talk to Dr. Mone."
6. Tap banner → Professionals screen, Jane Mone (endocrinology) pre-selected.

**Design must preserve**: the Vitals modal is the same sheet the feeding/diaper flows use. Don't build a new pattern.

---

## Flow 3 — "Share Altair's first step with Grandma"

**Trigger**: Mom catches the first step on video. Wants Grandma (who doesn't have the app) to see it.

1. Moments tab → tap "+ Add moment" → upload photo/video, 5-word caption.
2. Save fires haptic + confetti-free celebration.
3. New moment row has a share icon → opens iOS share sheet → Grandma gets a `balam.ai/share/{id}` link via WhatsApp.

**Design must preserve**: the share link is read-only (Grandma doesn't sign up). Future-state we haven't built yet — show the Share button in the mockup but note it's Phase 5.

---

## Flow 4 — "I just added my dad to the household"

**Trigger**: First-time user adds their 58-year-old father.

1. Today screen → tap "+" at end of member avatar row.
2. Sheet slides up: role chips (Child is pre-selected) → tap "Father".
3. Form shrinks (no stage picker for adults) — just Name, Date of Birth, Conditions (chips: "diabetes", "hypertension", …), Medications (optional).
4. Save → new avatar appears in the row with a soft-blue ring (father role color).
5. Tap the new Dad avatar → Today screen rebuilds: adult greeting, adult Quick Access (Lab, Doctors, Meds, Log Vitals), adult cards.

**Design must preserve**: the stage-selection UI is HIDDEN for non-child roles. Adults don't have trimesters.

---

## Anti-flow — things the redesign must NOT make easier

- Tracking feeding for an adult member (adult members don't need diaper logs)
- AI chat about "is my partner hitting their milestones" (the AI should refuse tone + not imply adults have milestones)
- Community posting as "a parent of Dad" (the Community tab is still for parents-of-children; adult members don't post)
