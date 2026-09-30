import { pageTitle } from 'ember-page-title';
import SiteNav from 'apotecaedro/components/site-nav';
import DarkModeToggle from 'apotecaedro/components/dark-mode-toggle';
import FishViewer from 'apotecaedro/components/fish-viewer';
import HeroSection from 'apotecaedro/components/hero-section';
import AboutSection from 'apotecaedro/components/about-section';
import SupportSection from 'apotecaedro/components/support-section';
import ProjectsSection from 'apotecaedro/components/projects-section';
import ContactSection from 'apotecaedro/components/contact-section';
import SiteFooter from 'apotecaedro/components/site-footer';

<template>
  {{pageTitle "Apotecaedro"}}

  <SiteNav />
  <DarkModeToggle />
  <FishViewer />

  <HeroSection />
  <AboutSection />
  <SupportSection />
  <ProjectsSection />
  <ContactSection />
  <SiteFooter />
</template>
