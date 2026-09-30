# Apotecaedro

Site da equipe Apotecaedro (Brazilian indie game studio), built as a static Ember.js single-page app.

## Prerequisites

- [Node.js](https://nodejs.org/) 20.19+ (with npm)

## Installation

- `npm install`

## Running / Development

- `npm start`
- Visit the app at [http://localhost:4200](http://localhost:4200)

> **Windows note:** the build uses Embroider/Vite, which creates a symlink during
> dependency optimization. Standard Windows accounts can't create symlinks without
> either enabling **Developer Mode** (Settings → Privacy & Security → For developers)
> or running the terminal as Administrator. This only affects local Windows builds —
> Vercel's Linux build environment is unaffected.

### Building

- `npm run build` — outputs a static production build to `dist/`

## Deploying to Vercel

This is a fully static site (no server/SSR needed), so it deploys to Vercel's free
tier as-is:

1. Push this repository to GitHub (or GitLab/Bitbucket).
2. In Vercel, click **Add New → Project** and import the repository.
3. Vercel auto-detects the Vite framework. Confirm:
   - Build Command: `npm run build`
   - Output Directory: `dist`
4. Deploy. Every push to the main branch redeploys automatically.

`vercel.json` in this repo pins the build command/output directory explicitly in
case auto-detection ever misfires.

## Project structure

- `app/templates/application.gjs` — page shell that assembles all sections
- `app/components/` — one component per section (nav, hero, about, support,
  projects, contact, footer), plus `dark-mode-toggle`, `fish-viewer` (the Three.js
  fish that follows the cursor), and `lazy-image` (blur-up lazy loading)
- `app/styles/app.css` — all site styles and responsive breakpoints
- `public/assets/` — images, the 3D fish model (`.glb`), and the resume PDF,
  served as-is at `/assets/...`

## Further Reading

- [Ember.js](https://emberjs.com/)
- [Vite](https://vite.dev)
- [Vercel](https://vercel.com/)
