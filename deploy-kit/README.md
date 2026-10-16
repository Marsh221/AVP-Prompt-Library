# AVP-websites Deploy Kit

Reconstruction kit for the performance polish of `Marsh221/AVP-websites`
(commit `5cb9978` in the local clone at `/home/user/AVP-websites`, pending push
because the session token lacked write access).

## What the changes do

- Responsive `<picture>` sources (AVIF + WebP + JPEG) for all 6 artworks
  (640/960/1280/1672 landscape, 480/800/1086 portrait) with `sizes` matched to CSS
- Mobile hero: 246 KB → ~10 KB (AVIF 640w); full-page image payload ~1.5 MB → ~100 KB
- Lazy-load + async-decode gallery; `fetchpriority="high"` hero; width/height on all images
- Fixes: lightbox empty `src` request, `height:100%` chain through `<picture>`,
  `--faint` contrast (#8a8286, WCAG AA), footer `<div>` → `<nav>`

## How to apply (from a fresh clone of AVP-websites)

```bash
git apply avp-websites-perf.diff          # index.html, css/style.css, js/main.js
bash build-responsive-images.sh           # regenerates all assets/img variants
git add -A && git commit -m "Performance: responsive AVIF/WebP images, lazy gallery, a11y polish"
git push origin main                      # GitHub Pages deploys automatically
```

Alternatively, if the workspace clone at `/home/user/AVP-websites` still exists,
it already contains the committed work — just `git push origin main` from there
once credentials have write access.

## Expected PageSpeed impact

- Mobile LCP: 8.0 s → ~2 s (hero payload is the bottleneck)
- "Improve image delivery" (~967 KiB) resolved
- "Use efficient cache lifetimes" cannot be fixed on GitHub Pages (forced
  `max-age=600`); its penalty shrinks as payload shrinks
