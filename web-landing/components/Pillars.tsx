const pillars = [
  {
    title: "Journey Tracker",
    description:
      "Week-by-week pregnancy + 0-24 month baby development. Log weight, water, sleep, kicks, feeds, diapers.",
    color: "from-primary to-primary-dark",
  },
  {
    title: "Balam AI",
    description:
      "AI chat that knows your week, your baby's age, and your tracking data. Warm, evidence-based answers.",
    color: "from-secondary to-secondary-dark",
  },
  {
    title: "Community",
    description:
      "Stage-matched groups. Connect with parents at your exact week. Verified doctors answer questions.",
    color: "from-accent to-accent-dark",
  },
  {
    title: "Professionals",
    description:
      "OB-GYNs, pediatricians, midwives, doulas, lactation consultants. Book consultations directly.",
    color: "from-secondary-dark to-secondary",
  },
  {
    title: "Marketplace",
    description:
      "Curated products filtered by your stage. Pregnancy pillows at 20 weeks, size M diapers at month 6.",
    color: "from-accent-dark to-accent",
  },
];

export default function Pillars() {
  return (
    <section id="pillars" className="py-20 md:py-28">
      <div className="container-page">
        <div className="mx-auto max-w-2xl text-center">
          <p className="mb-3 text-sm font-semibold uppercase tracking-wider text-primary">
            Five pillars, one app
          </p>
          <h2 className="text-3xl font-extrabold md:text-5xl">
            Everything parenting, finally in one place
          </h2>
          <p className="mt-4 text-lg text-ink-secondary">
            Stop juggling 15 apps. Balam.AI is the home for your parenting journey.
          </p>
        </div>

        <div className="mt-16 grid gap-4 md:grid-cols-2 lg:grid-cols-3">
          {pillars.map((p, i) => (
            <div key={p.title} className="card relative overflow-hidden transition hover:shadow-lg">
              <div
                className={`mb-4 flex h-12 w-12 items-center justify-center rounded-xl bg-gradient-to-br ${p.color} text-white font-bold`}
              >
                {i + 1}
              </div>
              <h3 className="text-xl font-bold">{p.title}</h3>
              <p className="mt-2 text-ink-secondary">{p.description}</p>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}
