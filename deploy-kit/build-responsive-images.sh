#!/usr/bin/env bash
# Rebuild the responsive AVIF/WebP/JPEG artwork variants for AVP-websites.
# Run from the AVP-websites repo root (requires ImageMagick `convert`).
set -euo pipefail
cd assets/img

# Landscape pieces (hero + wide): 1672x941 source
for f in hero-main work-03-devourer; do
  for w in 640 960 1280 1672; do
    [ "$w" = 1672 ] || convert "${f}.jpg" -resize "${w}x" -strip -interlace Plane -quality 82 "${f}-${w}.jpg"
    convert "${f}.jpg" -resize "${w}x" -strip -quality 70 "${f}-${w}.webp"
    convert "${f}.jpg" -resize "${w}x" -strip -quality 45 -define heic:speed=2 "${f}-${w}.avif"
  done
done

# Portrait pieces: 1086x1448 source
for f in work-01-ashen-crown work-02-cathedral work-04-sword-saint work-05-black-orchard; do
  for w in 480 800 1086; do
    [ "$w" = 1086 ] || convert "${f}.jpg" -resize "${w}x" -strip -interlace Plane -quality 82 "${f}-${w}.jpg"
    convert "${f}.jpg" -resize "${w}x" -strip -quality 70 "${f}-${w}.webp"
    convert "${f}.jpg" -resize "${w}x" -strip -quality 45 -define heic:speed=2 "${f}-${w}.avif"
  done
done

# Recompress full-size JPEG fallbacks (kept as og:image / old-browser fallback)
for f in hero-main work-01-ashen-crown work-02-cathedral work-03-devourer work-04-sword-saint work-05-black-orchard; do
  convert "${f}.jpg" -strip -interlace Plane -quality 82 "${f}.tmp.jpg"
  mv "${f}.tmp.jpg" "${f}.jpg"
done

echo "done — responsive variants rebuilt"
