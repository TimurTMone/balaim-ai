export default function Footer() {
  return (
    <footer className="border-t border-divider bg-bg py-12">
      <div className="container-page">
        <div className="flex flex-col items-center justify-between gap-6 md:flex-row">
          <div className="flex items-center gap-2">
            <div className="flex h-8 w-8 items-center justify-center rounded-lg bg-gradient-to-br from-primary to-primary-dark">
              <svg
                viewBox="0 0 24 24"
                className="h-4 w-4 text-white"
                fill="none"
                stroke="currentColor"
                strokeWidth="2.5"
              >
                <rect x="4" y="6" width="16" height="14" rx="4" />
                <circle cx="12" cy="13" r="2" fill="currentColor" />
              </svg>
            </div>
            <span className="font-bold">Balam.AI</span>
          </div>
          <nav className="flex flex-wrap items-center justify-center gap-x-6 gap-y-2 text-sm text-ink-secondary">
            <a href="mailto:hello@balam.ai" className="hover:text-ink transition">
              hello@balam.ai
            </a>
            <a href="/privacy" className="hover:text-ink transition">
              Privacy
            </a>
            <a href="/terms" className="hover:text-ink transition">
              Terms
            </a>
            <a
              href="https://github.com/TimurTMone/balaim-ai"
              target="_blank"
              rel="noopener"
              className="hover:text-ink transition"
            >
              GitHub
            </a>
          </nav>
          <p className="text-xs text-ink-hint">
            © {new Date().getFullYear()} AppAltai
          </p>
        </div>
      </div>
    </footer>
  );
}
