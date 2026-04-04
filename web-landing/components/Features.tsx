const features = [
  {
    eyebrow: "Pregnancy Tracker",
    title: "Week-by-week, tailored to you",
    description:
      "From week 4 to week 40 — know what's happening with your baby, your body, and what to expect next. Track weight, hydration, sleep, and kicks with beautiful, science-backed insights.",
    bullets: [
      "Baby size, weight, and development at every week",
      "Symptom tracker with doctor-approved context",
      "Kick counter with 2-hour safety reminder",
      "Contraction timer for labor",
    ],
  },
  {
    eyebrow: "Baby Development 0-24mo",
    title: "Know what's normal. Know when to worry.",
    description:
      "AAP, WHO, and CDC-aligned guidance month-by-month. Every milestone, every red flag, every activity — organized so you always know what's next.",
    bullets: [
      "Physical, cognitive, language, and social milestones",
      "Feeding, sleep, and vaccine schedules by month",
      "Activities to try this week",
      "Red flags — when to call the doctor",
    ],
  },
  {
    eyebrow: "Balam AI",
    title: "A companion that actually knows you",
    description:
      "Most pregnancy bots give you a generic Wikipedia answer. Balam AI knows you're at week 28, had 6 glasses of water today, and your last kick count was 12. Answers are personalized — always.",
    bullets: [
      "Powered by Claude — warmth + clinical accuracy",
      "Grounded in your stage and tracking data",
      "Evidence-based with appropriate disclaimers",
      "Multilingual (English, Russian, Kyrgyz coming)",
    ],
  },
];

export default function Features() {
  return (
    <section id="features" className="bg-surface py-20 md:py-28">
      <div className="container-page">
        <div className="space-y-24">
          {features.map((f, i) => (
            <div
              key={f.title}
              className={`grid gap-10 lg:grid-cols-2 lg:items-center ${
                i % 2 === 1 ? "lg:[&>div:first-child]:order-2" : ""
              }`}
            >
              <div>
                <p className="mb-3 text-sm font-semibold uppercase tracking-wider text-primary">
                  {f.eyebrow}
                </p>
                <h2 className="text-3xl font-extrabold md:text-4xl">{f.title}</h2>
                <p className="mt-4 text-lg text-ink-secondary">{f.description}</p>
                <ul className="mt-6 space-y-3">
                  {f.bullets.map((b) => (
                    <li key={b} className="flex items-start gap-3">
                      <svg
                        className="mt-1 h-5 w-5 flex-shrink-0 text-primary"
                        fill="none"
                        stroke="currentColor"
                        strokeWidth="2.5"
                        viewBox="0 0 24 24"
                      >
                        <path strokeLinecap="round" strokeLinejoin="round" d="M5 13l4 4L19 7" />
                      </svg>
                      <span className="text-ink">{b}</span>
                    </li>
                  ))}
                </ul>
              </div>
              <div className="aspect-[4/5] rounded-3xl bg-gradient-to-br from-primary/10 via-accent/10 to-secondary/10 p-8 flex items-center justify-center">
                <div className="w-full max-w-xs rounded-2xl bg-surface p-6 shadow-xl">
                  <div className="flex items-center gap-3 border-b border-divider pb-4">
                    <div className="h-10 w-10 rounded-xl bg-gradient-to-br from-primary to-primary-dark" />
                    <div>
                      <p className="text-xs font-semibold text-primary">{f.eyebrow}</p>
                      <p className="text-sm font-bold">Preview</p>
                    </div>
                  </div>
                  <div className="mt-4 space-y-3">
                    {f.bullets.slice(0, 3).map((b, bi) => (
                      <div key={bi} className="rounded-lg bg-bg p-3">
                        <div className="h-2 w-2/3 rounded-full bg-ink/20" />
                        <div className="mt-2 h-2 w-full rounded-full bg-ink/10" />
                      </div>
                    ))}
                  </div>
                </div>
              </div>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}
