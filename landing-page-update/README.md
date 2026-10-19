# Landing Page Update — AVP-websites (ready to apply)

Prepared 2026-10-19. Swaps the placeholder artwork in `Marsh221/AVP-websites`
for the original AVP pieces, sized to the site's exact frame specs.

## What's in the swap

| File (goes to `assets/img/`) | Piece | Slot | Size |
|---|---|---|---|
| `hero-main.jpg` | Cosmic Phoenix Ascending | Hero (full-height right panel) | 1200×1500 |
| `work-01-crimson-moon.jpg` | Beneath the Red Moon | Row 1 — tall (7fr) | 1330×1400 |
| `work-02-screaming-void.jpg` | The Screaming Void | Row 1 — lean (5fr) | 950×1400 |
| `work-03-phoenix-wide.jpg` | Cosmic Phoenix Ascending (wide) | Full-width 21:9 | 2360×1012 |
| `work-04-beyond-form.jpg` | Beyond Form | Row 3 — lean (flipped) | 950×1400 |

The patch also updates `index.html` (titles, kinds, alt text, lightbox
captions) and the README / PLACEHOLDERS status notes.

**Work 05 stays a placeholder** — it needs one more portrait piece
(≈ 4:5, export 1330×1400, JPG q~80). Good candidates: the F1 piece (crop to
4:5) or the halo monk.

## Option A — one command (if you have a local clone of AVP-websites)

```bash
cd path/to/AVP-websites
git fetch origin main && git checkout main && git pull
git am path/to/landing-page-update/patch/0001-*.patch
git push origin main
```

GitHub Pages redeploys automatically. Done.

## Option B — manual (no patch)

1. Copy the 5 files from `images/` into `assets/img/`.
2. Delete the old placeholders: `work-01-ashen-crown.jpg`,
   `work-02-cathedral.jpg`, `work-03-devourer.jpg`, `work-04-sword-saint.jpg`
   (keep `work-05-black-orchard.jpg` and `hero-main.jpg` — the new ones
   replace them by name).
3. In `index.html`, update the 4 work blocks (hero needs no change — same
   filename):
   - **Work 01 (tall):** `data-title` / `aria-label` / `<h3>` → `Beneath the Red Moon`,
     src → `work-01-crimson-moon.jpg`,
     alt → `A horned warrior in ragged armor and tattered shawls stands sword-planted on a flooded battlefield of fallen banners, backlit by an enormous blood-red moon.`
   - **Work 02 (lean):** → `The Screaming Void`, src → `work-02-screaming-void.jpg`,
     kind → `Dark Surrealism · Portrait`,
     alt → `A spectral skull of smoke and starlight screams, white fire burning in its eye and throat against a storm of dark clouds.`
   - **Work 03 (wide):** → `Cosmic Phoenix Ascending`, src → `work-03-phoenix-wide.jpg`,
     kind → `Cosmic · Key Art`,
     alt → `A phoenix of living flame spreads its wings across a spiral galaxy, a beam of light falling from the galactic core.`
   - **Work 04 (lean, flipped row):** → `Beyond Form`, src → `work-04-beyond-form.jpg`,
     kind → `Cosmic · Concept`,
     alt → `A human silhouette in mid-flight, arms open, dissolving into a radiant white burst of light through the clouds.`
4. Remove the `<!-- ░░ WORK 0X — REPLACE ME ░░ -->` and `<!-- PLACEHOLDER ARTWORK -->`
   comments for those four blocks (cosmetic).

## Why these sizes

Site container = 1180px. Frames render at ~665×700 (tall), ~475×700 (lean),
1180×506 (wide, 21:9); hero = up to 1240px wide × full viewport. Every export
is 2× the on-screen frame size with the frame's exact aspect ratio, so
`object-fit: cover` crops nothing important.
