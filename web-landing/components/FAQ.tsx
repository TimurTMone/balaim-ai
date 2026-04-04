const faqs = [
  {
    q: "When will Balam.AI launch?",
    a: "We're currently in beta. Join the waitlist and you'll be invited as we roll out to each parenting stage.",
  },
  {
    q: "Is it free?",
    a: "During beta, yes — 100% free. After launch, core tracking and community will stay free. Advanced AI insights and premium professional consultations will be a low-cost subscription.",
  },
  {
    q: "What makes Balam AI different from other pregnancy apps?",
    a: "Most apps give you generic info. Balam AI knows your specific week, your tracking data, and your stage — so every answer is personalized. We also cover the full journey: pre-pregnancy through toddler years, in one app.",
  },
  {
    q: "Is my data private?",
    a: "Yes. Your tracking data is yours. We don't sell data to third parties. We don't show ads. Ever.",
  },
  {
    q: "Do I need Firebase/an account to try the app?",
    a: "No. The app works in demo mode with one-click test accounts so you can explore everything before signing up.",
  },
  {
    q: "Which languages will be supported?",
    a: "English at launch. Russian and Kyrgyz shortly after. We're building for Central Asia first, then expanding globally.",
  },
];

export default function FAQ() {
  return (
    <section id="faq" className="bg-surface py-20 md:py-28">
      <div className="container-page">
        <div className="mx-auto max-w-3xl">
          <div className="text-center">
            <h2 className="text-3xl font-extrabold md:text-5xl">Frequently asked</h2>
            <p className="mt-3 text-ink-secondary md:text-lg">
              Still have questions?{" "}
              <a href="mailto:hello@balam.ai" className="font-semibold text-primary">
                Email us
              </a>
              .
            </p>
          </div>
          <div className="mt-12 space-y-4">
            {faqs.map((f) => (
              <details
                key={f.q}
                className="card group cursor-pointer transition hover:border-primary/30"
              >
                <summary className="flex list-none items-center justify-between font-semibold">
                  {f.q}
                  <svg
                    className="h-5 w-5 text-ink-hint transition group-open:rotate-180"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth="2"
                    viewBox="0 0 24 24"
                  >
                    <path strokeLinecap="round" strokeLinejoin="round" d="M19 9l-7 7-7-7" />
                  </svg>
                </summary>
                <p className="mt-3 text-ink-secondary">{f.a}</p>
              </details>
            ))}
          </div>
        </div>
      </div>
    </section>
  );
}
