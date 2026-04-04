import { NextResponse } from "next/server";

/**
 * Waitlist signup endpoint.
 *
 * For now: logs to server console + returns success.
 * Wire this up to one of:
 *   - Firestore (waitlist collection)
 *   - Airtable/Google Sheets via API
 *   - Mailchimp/ConvertKit/Loops for email capture
 *   - Cloudflare KV / D1
 */

type WaitlistPayload = {
  email: string;
  stage: string;
};

export async function POST(req: Request) {
  try {
    const body = (await req.json()) as Partial<WaitlistPayload>;
    const email = body.email?.trim().toLowerCase();
    const stage = body.stage?.trim();

    if (!email || !email.includes("@")) {
      return NextResponse.json(
        { error: "Invalid email" },
        { status: 400 }
      );
    }
    if (!stage) {
      return NextResponse.json(
        { error: "Stage is required" },
        { status: 400 }
      );
    }

    // TODO: Persist to real backend. For now, log server-side.
    console.log("[waitlist]", { email, stage, at: new Date().toISOString() });

    return NextResponse.json({ ok: true }, { status: 200 });
  } catch {
    return NextResponse.json({ error: "Bad request" }, { status: 400 });
  }
}
