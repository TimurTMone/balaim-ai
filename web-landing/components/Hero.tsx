export default function Hero() {
  return (
    <section id="top" className="relative overflow-hidden pt-16 pb-20 md:pt-24 md:pb-32">
      {/* Background decoration */}
      <div className="pointer-events-none absolute inset-0 -z-10">
        <div className="absolute top-20 left-1/2 h-96 w-96 -translate-x-1/2 rounded-full bg-primary/10 blur-3xl" />
        <div className="absolute top-40 right-10 h-72 w-72 rounded-full bg-secondary/10 blur-3xl" />
      </div>

      <div className="container-page">
        <div className="mx-auto max-w-3xl text-center">
          <div className="mb-6 inline-flex items-center gap-2 rounded-full border border-primary/20 bg-primary/5 px-4 py-1.5">
            <span className="h-2 w-2 animate-pulse rounded-full bg-primary" />
            <span className="text-xs font-semibold tracking-wide text-primary">
              NOW IN BETA
            </span>
          </div>
          <h1 className="text-4xl font-extrabold leading-tight md:text-6xl md:leading-[1.1]">
            Your AI parenting companion —
            <br />
            <span className="bg-gradient-to-r from-primary to-primary-dark bg-clip-text text-transparent">
              from first test to first steps
            </span>
          </h1>
          <p className="mx-auto mt-6 max-w-2xl text-lg text-ink-secondary md:text-xl">
            Pregnancy tracking, baby development (0-24 months), AI guidance, community,
            and curated products — in one app that actually knows your journey.
          </p>
          <div className="mt-10 flex flex-col items-center justify-center gap-4 sm:flex-row">
            <a href="#waitlist" className="btn-primary w-full sm:w-auto">
              Join the waitlist
            </a>
            <a href="#features" className="btn-secondary w-full sm:w-auto">
              See features
            </a>
          </div>
          <p className="mt-6 text-sm text-ink-hint">
            Free during beta · iOS, Android, Web · Made by parents, for parents
          </p>
        </div>

        {/* App preview mockup */}
        <div className="mx-auto mt-16 max-w-sm md:max-w-md">
          <div className="relative rounded-[2.5rem] bg-gradient-to-br from-primary to-primary-dark p-2 shadow-2xl">
            <div className="rounded-[2.25rem] bg-surface p-6">
              <div className="mb-4 flex items-center justify-between">
                <div>
                  <p className="text-xs font-medium text-ink-hint">My Journey</p>
                  <h3 className="text-2xl font-extrabold">Week 24</h3>
                </div>
                <div className="flex h-12 w-12 items-center justify-center rounded-2xl bg-primary/10">
                  <svg className="h-6 w-6 text-primary" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M12 2L9.5 7L4 7.5L8 11.5L7 17L12 14.5L17 17L16 11.5L20 7.5L14.5 7L12 2Z" />
                  </svg>
                </div>
              </div>
              <div className="mb-4 rounded-xl bg-secondary/5 p-3">
                <p className="text-xs font-semibold text-secondary">BALAM AI</p>
                <p className="mt-1 text-sm text-ink">
                  Your baby can hear your voice now. Try talking or singing to them today!
                </p>
              </div>
              <div className="grid grid-cols-4 gap-2">
                {[
                  { label: "Weight", val: "68 kg" },
                  { label: "Water", val: "6" },
                  { label: "Sleep", val: "7h" },
                  { label: "Kicks", val: "12" },
                ].map((s) => (
                  <div key={s.label} className="rounded-xl bg-primary/5 p-2 text-center">
                    <p className="text-base font-bold text-primary">{s.val}</p>
                    <p className="text-[10px] font-medium text-ink-hint">{s.label}</p>
                  </div>
                ))}
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}
