export default function Navbar() {
  return (
    <header className="sticky top-0 z-50 border-b border-divider bg-bg/80 backdrop-blur-xl">
      <div className="container-page flex h-16 items-center justify-between">
        <a href="#top" className="flex items-center gap-2">
          <div className="flex h-9 w-9 items-center justify-center rounded-xl bg-gradient-to-br from-primary to-primary-dark">
            <svg
              viewBox="0 0 24 24"
              className="h-5 w-5 text-white"
              fill="none"
              stroke="currentColor"
              strokeWidth="2.5"
              strokeLinecap="round"
              strokeLinejoin="round"
            >
              <rect x="4" y="6" width="16" height="14" rx="4" />
              <circle cx="12" cy="13" r="2" fill="currentColor" />
              <path d="M7 4l1 2M17 4l-1 2" />
            </svg>
          </div>
          <span className="text-lg font-bold tracking-tight">Balam.AI</span>
        </a>
        <nav className="hidden items-center gap-8 md:flex">
          <a href="#features" className="text-sm font-medium text-ink-secondary hover:text-ink transition">
            Features
          </a>
          <a href="#pillars" className="text-sm font-medium text-ink-secondary hover:text-ink transition">
            How it works
          </a>
          <a href="#faq" className="text-sm font-medium text-ink-secondary hover:text-ink transition">
            FAQ
          </a>
        </nav>
        <a href="#waitlist" className="btn-primary !px-4 !py-2 text-sm">
          Join waitlist
        </a>
      </div>
    </header>
  );
}
