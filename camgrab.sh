#!/bin/bash
# Grabs the latest frame from each cam, writes a page, and opens it.
# Run with:  bash camgrab.sh

# === Edit this list to add/remove cams (space separated) ===
CAMS="ec-mainstreetpier ec-ponceinlet ec-newsmyrna"
BASE="https://camstills.cdn-surfline.com/us-east-2"

OUT="$(cd "$(dirname "$0")" && pwd)/camgrab"
mkdir -p "$OUT"
HTML="$OUT/index.html"

cat > "$HTML" <<EOF
<!doctype html><html><head><meta charset="utf-8"><title>Cam Grab</title>
<style>body{background:#111;color:#eee;font-family:sans-serif;margin:16px}img{width:100%;max-width:1280px;display:block;margin:4px 0 28px}h3{margin:0}.bad{color:#f66}</style></head><body>
<p>Grabbed $(date)</p>
EOF

for C in $CAMS; do
  echo "Grabbing $C..."
  rm -f "$OUT/$C.jpg"
  if curl -s -f -o "$OUT/$C.jpg" "$BASE/$C/latest_full.jpg"; then
    echo "<h3>$C</h3><img src=\"$C.jpg\">" >> "$HTML"
  else
    echo "<h3 class=\"bad\">$C - FAILED</h3><br>" >> "$HTML"
  fi
done

echo "</body></html>" >> "$HTML"
open "$HTML"
