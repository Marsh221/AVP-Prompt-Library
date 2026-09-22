# Six-Step Image-to-Video Motion Framework

A compact framework for turning a still AI image into a controlled short animation.

## Motion Structure

1. **Start / Preserve** — Define what must remain consistent from the source image.
2. **Character Motion** — Give the subject one or two simple, natural actions.
3. **Secondary Motion** — Animate hair, clothing, ornaments, or other attached details.
4. **Environment Motion** — Add subtle movement such as mist, petals, water, rain, fire, or banners.
5. **Camera Motion** — Use one clear camera move, such as a slow push-in.
6. **Avoid** — Prevent morphing, distortion, unwanted cuts, and excessive motion.

## Core Principle

**Micro-motion + one camera movement.**

More movement is not always better. Short image-to-video generations are often more stable when the subject performs a small number of deliberate actions while the environment provides subtle supporting motion.

## Example — Donghua Pavilion Portrait

> Animate the provided image into a single continuous 8-second cinematic donghua shot. Preserve the woman's identity, face, hairstyle, clothing, pavilion, lake and background architecture. She slowly turns her head toward the camera and gives a subtle natural blink while breathing gently. A soft breeze moves individual strands of her long hair, hanging ornaments, ribbons and loose hanfu fabric. Cherry-blossom petals drift naturally through the foreground and background. Lantern flames flicker subtly, mist moves slowly across the lake, and the water produces gentle reflections and ripples. Camera performs a very slow, smooth cinematic push-in toward her face with subtle depth parallax. Maintain the original moonlit blue-and-warm-lantern lighting and elegant fantasy donghua aesthetic. Motion should be graceful, restrained and physically believable. No sudden movement, talking, exaggerated facial expressions, camera shake, cuts, body distortion, morphing, extra fingers or limbs, changing clothes, changing face, or changing background architecture.

## Test After Generation

Ask:

- Did the character remain visually consistent?
- Was the main action clear?
- Did the secondary motion look natural?
- Did the camera movement improve the shot?
- Did anything morph or distort?

Change the section responsible for the biggest problem and test again.
