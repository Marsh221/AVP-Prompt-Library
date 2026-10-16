# Pinokio CGI-Video Deep Dive

A deep dive on turning still artwork into short **CGI-look video clips** using **Pinokio** — the free, open-source local AI app launcher (often spelled "Pinocchio") — with a motion-prompt system and ready-to-use prompts. Builds on `frameworks/six-step-image-to-video-motion.md`.

---

## 1. What Pinokio Is

Pinokio is a desktop "AI browser" (Win/Mac/Linux, by Cocktail Peanut) that installs and runs open AI models locally with one click — no code, no cloud, no per-generation cost. Its **Discover** page is an app store; the video stack you care about:

- **Wan2GP** — runs **Wan 2.2** and **LTX-2.3** (the two workhorses of 2026 local video)
- **FramePack** — long, smooth image-to-video that can extend clips
- **Stable Video Diffusion** — classic simple image-to-video
- **ComfyUI** — full control when you outgrow the simple UIs

**Hardware:** NVIDIA GPU strongly recommended. 6–8 GB VRAM is the practical floor (12 GB+ is comfortable). First install downloads model weights (10–20+ GB) — that's the slow part; generation itself is 1–8 minutes per clip.

## 2. The Core Idea for the CGI Look

**The style lives in the image. The prompt controls the motion.**

Image-to-video models preserve the rendering style of the source frame almost entirely. So the workflow is:

1. Create a still that **already looks like CGI** — use the six-step image prompt (or `prompts/the-alchemists-rise/master-prompt.md`) with a CG donghua / cinematic 3D-render style anchor.
2. Animate it with a **motion-first prompt**. Keep style words as a short "tail" that locks the render feel — not as the main event.

If the clip looks like flat anime or a morphing mess, the problem is usually the source still or over-ambitious motion — not missing style keywords.

## 3. Model Chooser (late 2026)

| Model | Best for | VRAM | Notes |
|---|---|---|---|
| **Wan 2.2 TI2V-5B** | First clips, iteration | 6–8 GB (FP8) | Text + image-to-video, up to 720p |
| **Wan 2.2 A14B (GGUF Q3–Q5)** | Best local motion quality | 6–12 GB w/ offload | 27B MoE; quantized runs on consumer GPUs |
| **LTX-2.3** | Speed + audio | 8–16 GB | Fastest renders, native sound, up to 4K on high-end |
| **FramePack** | Long slow cinematic shots | ~8 GB | Extends from last frame; silky for dollies |
| **HunyuanVideo 13B** | Fidelity ceiling | 16–24 GB | Slowest; use for hero shots only |

## 4. Motion Prompt Structure (CGI Edition)

Same spine as the six-step motion framework, plus a style tail:

1. **Start / Preserve** — identity, face, costume, layout and *rendering style* stay identical to the source image.
2. **Character Motion** — one or two deliberate actions. Concrete verb + direction + pace ("slowly turns her head toward the camera", "raises one hand").
3. **Secondary Motion** — hair strands, fabric, ribbons, ornaments, qi/energy trails.
4. **Environment Motion** — embers, mist, petals, water, banners. Use **parallax cues**: "foreground embers drift past the camera while the temple remains still".
5. **Camera Motion** — exactly ONE move. Static counts as a move and must be named. Vocabulary: slow push-in, dolly out, pan left, tilt up, orbital arc, crane up, handheld drift.
6. **CGI Style Tail + Avoid** — "3D CG animation rendering, physically-based lighting, cinematic film look, consistent geometry." Then the avoid block.

**Core principle:** micro-motion + one camera move. More movement is not better — it is how clips start morphing.

## 5. Ready-to-Use CGI Video Prompts

### A. The God-Vein Awakening (The Alchemist's Rise)
> Animate the provided image into a single continuous 8-second cinematic 3D CG donghua shot. Preserve the youth's face, hair, robes, the two women and the cavern exactly. The twin energy columns — gold Yang fire and ice-silver Yin frost — pulse and spiral upward with growing intensity; his robes and hair whip in the rising energy wind; he slowly lifts his head, eyes glowing. Fine rock debris drifts upward past the camera while the cavern walls stay still. Camera performs one slow, smooth push-in toward him with subtle depth parallax. 3D CG animation rendering, physically-based lighting, cinematic film look. Graceful, restrained, physically believable. No cuts, talking, morphing, body distortion, extra fingers or limbs, camera shake, changing faces, changing clothes, changing background, sudden zoom.

### B. The Pill Furnace (The Alchemist's Rise)
> Animate the provided image into a single continuous 8-second cinematic 3D CG donghua shot. Preserve the alchemist, the goddess, the demon princess, the bronze cauldron and the temple ruins exactly. Golden elixir flames breathe and swirl above the cauldron; luminous pills rise slowly on the fire column; embers and heat shimmer drift through the scene; the rotating star array and sigils turn at a constant slow speed; fabric and hair stir gently in the updraft. Camera performs one very slow orbital arc around the group. 3D CG animation rendering, physically-based lighting, cinematic film look, consistent geometry. Reverent, awe-filled mood. No cuts, talking, morphing, flicker, body distortion, extra fingers, camera shake, changing faces, changing clothes, geometry collapse.

### C. Cathedral of Quiet Embers (AVP dark fantasy piece)
> Animate the provided image into a single continuous 10-second cinematic CGI film shot. Preserve the figure, lantern, cathedral architecture and crimson glass exactly. The lantern flame flickers softly and casts moving light; dust motes and embers drift slowly through the shafts of light; distant stained-glass glow pulses almost imperceptibly; the figure's cloak sways as if in a faint draft. Camera performs one slow, smooth dolly forward down the nave with subtle parallax between pillars. Cinematic 3D rendering, physically-based lighting, volumetric god rays, film grain. Solemn, eerie, quiet mood. No cuts, talking, morphing, warp, flicker bursts, camera shake, changing architecture, changing figure.

### D. Moonlit Sword Saint (donghua portrait)
> Animate the provided image into a single continuous 8-second cinematic 3D CG donghua shot. Preserve the sword saint's face, hair, robes, sword and moonlit background exactly. Crimson qi trails coil slowly around the blade like smoke; hair strands and robe hems drift in a soft night breeze; he gives one slow, subtle blink while breathing gently; distant clouds crawl across the moon. Camera performs one very slow push-in with shallow depth of field. 3D CG animation rendering, physically-based lighting, cinematic film look. Calm, lethal, elegant mood. No talking, morphing, body distortion, extra fingers, camera shake, cuts, changing face, changing clothes, changing background.

## 6. Settings Cheat-Sheet

| Setting | Starter baseline | Notes |
|---|---|---|
| Resolution | 480p → 720p after it works | Match the source image aspect ratio |
| Frames / FPS | 33–49 frames @ 12–16 fps (~3–4 s) | 5–10 s clips only after baseline is stable |
| Motion strength | Subtle / low | Raise only if the clip feels frozen |
| Steps / CFG | Model defaults; distilled: 4–8 steps, CFG ~1.0 | More steps ≠ more motion |
| Seed | Pin it once a clip works | Change exactly one module at a time |
| Negative prompt | `morphing, distortion, warping, flicker, jitter, extra fingers, extra limbs, cuts, scene change, text, watermark` | Keep it fixed while testing motion |
| Low-VRAM note | 512–640 px long side, fewer frames | Add offloading in Wan2GP before lowering quality |

Turn off `prompt_extend` (Wan) when you want literal control — it rewrites short prompts for you.

## 7. From Clip to Scene

1. **Bookend stills** — generate the start and end frames from the same master prompt, then use first+last-frame mode to animate between them. Cuts stay visually consistent.
2. **Extend, don't regen** — send the last frame to FramePack / extend-video to continue a slow camera move.
3. **Upscale + interpolate after** (RIFE / Topaz-style) — never ask the generator for both motion and final sharpness at once.
4. **Edit in a timeline** (Resolve/CapCut/Premiere) — 3–5 consistent clips beat one long unstable one.

## 8. Practice Rule

After each render, do not rewrite everything:

1. Did the style stay CGI? (If not → fix the source still.)
2. Was the main action clear?
3. Did anything morph?
4. Change only the responsible module (Character / Secondary / Environment / Camera / Avoid).
5. Render again and compare.
