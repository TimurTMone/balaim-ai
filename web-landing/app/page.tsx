import Navbar from "@/components/Navbar";
import Hero from "@/components/Hero";
import Pillars from "@/components/Pillars";
import Features from "@/components/Features";
import Waitlist from "@/components/Waitlist";
import FAQ from "@/components/FAQ";
import Footer from "@/components/Footer";

export default function Home() {
  return (
    <>
      <Navbar />
      <main>
        <Hero />
        <Pillars />
        <Features />
        <Waitlist />
        <FAQ />
      </main>
      <Footer />
    </>
  );
}
