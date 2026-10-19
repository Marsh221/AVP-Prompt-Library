# Landing Page Update — AVP-websites (ready to apply)

Prepared 2026-10-19. Replaces **all** placeholder artwork in
`Marsh221/AVP-websites` with original AVP pieces, sized to the site's exact
frame specs. One clean commit; verified to apply with `git am` on a fresh clone.

## What's in the swap

| File (goes to `assets/img/`) | Piece | Slot | Size |
|---|---|---|---|
| `hero-main.jpg` | Cosmic Phoenix Ascending | Hero (full-height right panel) | 1200×1500 |
| `work-01-crimson-moon.jpg` | Beneath the Red Moon | Row 1 — tall (7fr) | 1330×1400 |
| `work-02-screaming-void.jpg` | The Screaming Void | Row 1 — lean (5fr) | 950×1400 |
| `work-03-phoenix-wide.jpg` | Cosmic Phoenix Ascending (wide) | Full-width 21:9 | 2360×1012 |
| `work-04-beyond-form.jpg` | Beyond Form | Row 2 — lean (flipped) | 950×1400 |
| `work-05-black-beacon.jpg` | The Black Beacon | Row 2 — tall (flipped) | 1330×1400 |
| `work-06-apex-in-the-rain.jpg` | Apex in the Rain | Row 3 — tall (new row) | 1330×1400 |
| `work-07-from-above.jpg` | From Above — No. 03 | Row 3 — lean (new row) | 950×1400 |

Gallery rhythm becomes **pair → wide → flipped pair → pair** (7 works, all
original). The patch also updates `index.html` (titles, kinds, alt text,
lightbox captions) plus README / PLACEHOLDERS notes. All placeholder files
are deleted.

## Option A — one command (if you have a local clone of AVP-websites)

```bash
cd path/to/AVP-websites
git fetch origin main && git checkout main && git pull
git am path/to/landing-page-update/patch/0001-*.patch
git push origin main
```

GitHub Pages redeploys automatically. Done.

## Option B — manual (no patch)

1. Copy the 8 files from `images/` into `assets/img/`.
2. Delete the old placeholders: `work-01-ashen-crown.jpg`,
   `work-02-cathedral.jpg`, `work-03-devourer.jpg`, `work-04-sword-saint.jpg`,
   `work-05-black-orchard.jpg` (the new files replace hero by name).
3. In `index.html`, update the 5 work blocks that change (hero keeps the same
   filename; work 06/07 are a new row — the patch contains the exact HTML).
   Quick version: pull the branch `arena/landing-real-artwork` state from the
   patch's diff, or just ask the agent to paste the blocks.

## Why these sizes

Site container = 1180px. Frames render at ~665×700 (tall), ~475×700 (lean),
1180×506 (wide, 21:9); hero = up to 1240px wide × full viewport. Every export
is 2× the on-screen frame size with the frame's exact aspect ratio, so
`object-fit: cover` crops nothing important.

## Deliberately NOT on the site

- Manchester United jersey shots (marble / grey) — product-photography style,
  off-brand for the dark-fantasy gallery. They belong in the Pinterest
  crossover pillar (the jersey pin was your #2 performer, 65k impressions).
- Red F1 wall-shelf product photo — not portfolio art; keep off the gallery.
