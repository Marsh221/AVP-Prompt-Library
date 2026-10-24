# Red Dragon — Demon Marshal · 9:16 Vertical (Pinterest Pin)

**Series reference:** *The Demon Hunter* (Cang Yuan Tu / 沧元图) — Youku, Shenman Entertainment
**Pillar:** Donghua-inspired mythology
**Format:** 9:16 vertical · 1080 × 1920 · Pinterest pin + IG reel cover
**Builds on:** `prompts/red-dragon-demon-marshal.md` (16:9 take, option 1) with the two strongest recommendations folded in — **group scale** and the **Demon Marshal domain** cloud sea.
**Renders:** `art/red-dragon-demon-marshal-9x16-v2.png` (v2 — selected) · `art/red-dragon-demon-marshal-9x16.png` (v1 — first take, brighter red)

## What changed from the 16:9 version

| Variable | 16:9 take | 9:16 take |
|---|---|---|
| Camera | Low-angle wide, landscaped ruins left/right | Low-angle wide, **vertical stack** — sky and dragon at top, ruins compressed to the base |
| Scale | One human silhouette | **A row of tiny cultivators on the ridge** (group scale reads harder) |
| Environment | Mountain ruin under storm clouds | Ruin below a **red-lit cloud sea** — the Demon Marshal's domain |
| Composition | Depth receding sideways | **Three stacked layers:** cloud sea + dragon (top), pagoda ruin band (middle), silhouettes + scattered ash (bottom) |
| Negative space | Minimal — filled edges | **Reserved open band between horn and moon** for pin text overlay |

## Six-Step Breakdown

### 1. Subject
The red dragon of a Demon Marshal — a colossal ancient Eastern dragon — descending out of a burning cloud sea above a ruined sect.

### 2. Appearance
Long wingless serpentine body, branching antler horns, long flowing whiskers, ember-flame mane, deep crimson and scarlet scales edged in molten gold, four clawed limbs with obsidian talons, eyes burning like red stars, red-black demonic aura smoking off the hide. Scales catch light on every coil so the vertical drop of the body reads as one continuous form.

### 3. Environment
A red-lit sea of storm clouds hanging above an ancient Chinese mountain sect at night: tiered pagoda roofs, broken stone walls, pine ridges, guardian statues half-sunk in mist, ash and embers falling like snow. Constellation sparks scattered through the air.

### 4. Camera
Dramatic low-angle vertical poster composition, 9:16. Dragon head and horns anchor the top third, body spiraling down through the middle, ruined rooftops filling the lower third, a row of small armored cultivators on the ridge line at the base looking up. Strong center-axis symmetry with slight three-quarter turn on the head.

### 5. Lighting / Mood
Volumetric crimson rim light raking the scales, cold blue moonlight behind the storm, glowing constellation sparks, heavy mist. Epic, oppressive mythological dread — the moment a Marshal arrives.

### 6. Avoid
Western winged dragon, horizontal landscape framing, tiny dragon, flat cartoon shading, cluttered frame, distorted anatomy, text, watermark, signature, letterboxing.

## Working Prompt (copy-paste)

> Vertical 9:16 cinematic poster, 3D donghua render in the style of *The Demon Hunter* (Cang Yuan Tu): a colossal ancient Eastern dragon, long wingless serpentine body, branching antler horns, long flowing whiskers, mane of drifting ember-flame, deep crimson and scarlet scales edged with molten gold, four clawed limbs with obsidian talons, eyes burning like red stars, red-black demonic aura smoking off the hide, descending out of a burning red-lit cloud sea. Composition stacked for a tall frame: dragon head and horns in the top third, body spiraling down the center axis, a band of tiered pagoda roofs and broken stone walls across the lower third, a row of tiny armored cultivators on the ridge line at the very bottom looking up, guardian statues half-sunk in mist, pine ridges, ash and embers falling like snow, constellation sparks in the air. Dramatic low-angle wide shot, strong center-axis symmetry, slight three-quarter turn on the head, open negative space between the horns and the moon for text. Volumetric crimson rim light, cold blue moonlight behind the storm, heavy mist, epic oppressive mythological dread, ultra-detailed, high dynamic range, 1080x1920. Avoid: western winged dragon, horizontal landscape framing, tiny dragon, flat cartoon shading, cluttered frame, distorted anatomy, text, watermark, signature, letterboxing.

## Render notes — v1 → v2

**v1 failure:** the claws came out as fat cat paws, the overall tone was flat bright red (lost the cold/warm contrast that made the 16:9 take work), and the dragon read slightly cartoonish.

**Fixes applied in v2:** added `stylized CGI render`, `subsurface-lit crimson scale skin with fine individual scales`, `four-toed dragon claws (not paws)`, `cat paws` to the Avoid list, and pulled the palette back toward a *dark* red with cold blue storm light on the flanks. Result: the claws are dragon-appropriate, the body reads as one long vertical form, and the cultivator row at the base still reads as people at thumbnail size.

**v2 working prompt (copy-paste):**

> Vertical 9:16 cinematic poster still from a Chinese 3D donghua (look of The Demon Hunter / Cang Yuan Tu): a colossal ancient Eastern dragon descending out of a burning red cloud sea. Stylized CGI render — subsurface-lit crimson scale skin with fine individual scales and molten gold edging, giant branching antler horns, long thin curling whiskers trailing from the muzzle, flame-like mane, four-toed dragon claws (not paws), long tapering tail. Eyes burning like red stars, demonic black-red smoke peeling off the hide. Stacked vertical composition: horned head in the top third facing the viewer, body spiraling down the center axis through glowing storm clouds, tiered pagoda roofs and a stone sect wall across the lower third, a row of tiny armored cultivators on a rocky ridge at the very bottom silhouetted and looking up, guardian lion statues in mist, pine ridges, embers drifting. Low-angle wide shot, center-axis symmetry, open negative space beside the crescent moon for a title. Volumetric crimson rim light, cold blue moonlight, heavy mist, epic oppressive mythological dread, high detail, tall vertical framing. Avoid: western winged dragon, cat paws, horizontal landscape framing, tiny dragon, flat 2D painting, cluttered frame, distorted anatomy, text, watermark, signature, letterboxing.

## What to check on the render
1. Does the body read as one continuous vertical form, or does it get cropped into disconnected coils?
2. Do the cultivators at the base read as *people* at pin thumbnail size, or as noise? (Pinterest pins are viewed small.)
3. Is the top third clean enough for a title overlay?
4. Is the frame center-weighted, or has the model reverted to a landscape composition padded with sky?

## Next variables to test (one at a time)
1. **Camera** — same 9:16, but an eye-level three-quarter head shot filling the top two thirds. Best candidate for a portrait pin.
2. **Environment** — swap the cloud sea for a flooded courtyard with the dragon's reflection in black water.
3. **Palette** — cooled variant: crimson dragon against a cyan-white snowstorm, for the "ice phoenix / Frozen End Divine Arts" direction in the content strategy.
4. **Motion** — pull the whole 9:16 prompt into `frameworks/six-step-image-to-video-motion.md` for the 7-second loop that ships alongside the pin.
