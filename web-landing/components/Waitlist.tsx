"use client";

import { useState } from "react";

type FormState = "idle" | "loading" | "success" | "error";

export default function Waitlist() {
  const [email, setEmail] = useState("");
  const [stage, setStage] = useState("pregnant");
  const [state, setState] = useState<FormState>("idle");
  const [message, setMessage] = useState("");

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    if (!email.includes("@")) {
      setState("error");
      setMessage("Please enter a valid email address");
      return;
    }
    setState("loading");
    try {
      const res = await fetch("/api/waitlist", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ email, stage }),
      });
      if (!res.ok) throw new Error("Request failed");
      setState("success");
      setMessage("You're on the list! We'll reach out when it's your turn.");
      setEmail("");
    } catch {
      setState("error");
      setMessage("Something went wrong. Please try again.");
    }
  }

  return (
    <section id="waitlist" className="py-20 md:py-28">
      <div className="container-page">
        <div className="mx-auto max-w-2xl rounded-3xl bg-gradient-to-br from-primary to-primary-dark p-10 md:p-14 text-center text-white shadow-xl">
          <h2 className="text-3xl font-extrabold md:text-4xl">
            Be first to know when we launch
          </h2>
          <p className="mt-3 text-white/90 md:text-lg">
            Join the waitlist. We'll invite you when your stage is live.
          </p>
          <form onSubmit={handleSubmit} className="mt-8 space-y-4">
            <div className="flex flex-col gap-3 sm:flex-row">
              <input
                type="email"
                required
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                placeholder="your@email.com"
                className="flex-1 rounded-xl border-0 bg-white/15 px-4 py-3 text-white placeholder-white/60 backdrop-blur focus:bg-white/25 focus:outline-none focus:ring-2 focus:ring-white/50"
                disabled={state === "loading" || state === "success"}
              />
              <select
                value={stage}
                onChange={(e) => setStage(e.target.value)}
                className="rounded-xl border-0 bg-white/15 px-4 py-3 text-white backdrop-blur focus:bg-white/25 focus:outline-none focus:ring-2 focus:ring-white/50"
                disabled={state === "loading" || state === "success"}
              >
                <option value="trying" className="text-ink">Trying to conceive</option>
                <option value="pregnant" className="text-ink">Pregnant</option>
                <option value="newborn" className="text-ink">Baby 0-12mo</option>
                <option value="toddler" className="text-ink">Baby 1-2yr</option>
              </select>
            </div>
            <button
              type="submit"
              disabled={state === "loading" || state === "success"}
              className="w-full rounded-xl bg-white px-6 py-3 font-semibold text-primary shadow-sm transition hover:bg-white/95 active:scale-95 disabled:opacity-70"
            >
              {state === "loading" ? "Joining..." : state === "success" ? "You're in" : "Join waitlist"}
            </button>
          </form>
          {message && (
            <p
              className={`mt-4 text-sm ${
                state === "success" ? "text-white" : "text-white/90"
              }`}
            >
              {message}
            </p>
          )}
        </div>
      </div>
    </section>
  );
}
