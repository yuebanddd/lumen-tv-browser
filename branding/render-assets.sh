#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "$0")/.." && pwd)"
work="$(mktemp -d)"
trap 'rm -rf "$work"' EXIT

convert -size 512x512 xc:none \
  -fill '#081823' -stroke '#28536c' -strokewidth 10 \
  -draw 'roundrectangle 18,18 494,494 106,106' \
  -fill none -stroke '#28536c' -strokewidth 18 \
  -draw 'roundrectangle 74,104 438,348 42,42' \
  -stroke '#28536c' -strokewidth 22 \
  -draw 'line 172,378 340,378' \
  -strokewidth 18 -draw 'line 214,340 214,378 line 298,340 298,378' \
  -stroke '#54d7ff' -strokewidth 38 \
  -draw 'polyline 170,174 236,174 236,294 342,294' \
  -fill '#7ee8ff' -stroke none -draw 'circle 350,293 369,293' \
  "$work/mark.png"

convert -size 1280x720 'radial-gradient:#173c55-#050d13' \
  -fill none -stroke '#28536c' -strokewidth 18 \
  -draw 'roundrectangle 150,178 514,422 42,42' \
  -stroke '#54d7ff' -strokewidth 38 \
  -draw 'polyline 248,248 314,248 314,368 420,368' \
  -fill '#7ee8ff' -stroke none -draw 'circle 428,367 447,367' \
  -stroke '#28536c' -strokewidth 22 -draw 'line 248,452 416,452' \
  -strokewidth 18 -draw 'line 290,414 290,452 line 374,414 374,452' \
  -font DejaVu-Sans-Bold -fill '#effcff' -stroke none -pointsize 76 \
  -draw "text 600,330 'Lumen'" \
  -font DejaVu-Sans -fill '#7ee8ff' -pointsize 38 \
  -draw "text 603,400 'TV BROWSER'" \
  -fill '#8ca8b7' -pointsize 26 \
  -draw "text 603,460 'Designed for the big screen'" \
  "$work/banner.png"

convert "$work/mark.png" -resize 48x48 -depth 8 -strip "$root/app/src/main/res/drawable-mdpi/ic_launcher.png"
convert "$work/mark.png" -resize 72x72 -depth 8 -strip "$root/app/src/main/res/drawable-hdpi/ic_launcher.png"
convert "$work/mark.png" -resize 96x96 -depth 8 -strip "$root/app/src/main/res/drawable-xhdpi/ic_launcher.png"
convert "$work/mark.png" -resize 144x144 -depth 8 -strip "$root/app/src/main/res/drawable-xxhdpi/ic_launcher.png"
convert "$work/mark.png" -resize 192x192 -depth 8 -strip "$root/app/src/main/res/drawable-xxxhdpi/ic_launcher.png"
convert "$work/banner.png" -resize 640x360! -depth 8 -strip "$root/app/src/main/res/drawable-xhdpi/banner.png"
convert "$work/banner.png" -resize 364x205! -depth 8 -strip "$root/app/src/main/assets/pages/home/logo.png"
convert "$work/mark.png" -resize 192x192! -depth 8 -strip "$root/metadata/en-US/images/icon.png"
convert "$work/banner.png" -resize 1280x720! -depth 8 -strip "$root/metadata/en-US/images/tvBanner.png"
convert "$work/banner.png" -resize 1024x500! -depth 8 -strip "$root/metadata/en-US/images/featureGraphic.png"
