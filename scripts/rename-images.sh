#!/usr/bin/env bash
# =============================================================
# SNELGROVE ICE CREAM — Image Rename Helper
# =============================================================
# Drop your flavor photos into images/flavors/ with any naming,
# then run this script to rename them to match what the site expects.
#
# Usage:
#   chmod +x scripts/rename-images.sh
#   ./scripts/rename-images.sh
# =============================================================

set -e
FLAVORS_DIR="$(dirname "$0")/../images/flavors"
cd "$FLAVORS_DIR"

echo "🍦 Snelgrove Image Renamer"
echo "Working in: $(pwd)"
echo ""

# Helper: case-insensitive partial match rename
rename_if_match() {
  local pattern="$1"     # grep pattern (case-insensitive)
  local target="$2"      # target filename (no extension)
  # Find any image file matching the pattern
  for f in *; do
    [[ -f "$f" ]] || continue
    ext="${f##*.}"
    ext="${ext,,}"  # lowercase extension
    # Normalize to jpg/png/webp only
    [[ "$ext" == "jpg" || "$ext" == "jpeg" || "$ext" == "png" || "$ext" == "webp" || "$ext" == "heic" ]] || continue
    # Skip already-renamed targets
    [[ "${f%.*}" == "$target" ]] && continue
    # Check if filename matches pattern
    if echo "$f" | grep -qi "$pattern"; then
      final_ext="$ext"
      [[ "$ext" == "jpeg" ]] && final_ext="jpg"
      [[ "$ext" == "heic" ]] && final_ext="jpg"
      echo "  ✓ '$f' → '$target.$final_ext'"
      mv "$f" "$target.$final_ext"
      break
    fi
  done
}

echo "Renaming flavor images..."
rename_if_match "burnt.almond\|burnt_almond\|burntAlmond"         "burnt-almond-fudge"
rename_if_match "canadian.van\|canadian_van\|canadianV"            "canadian-vanilla"
rename_if_match "rocky.road\|rocky_road\|rockyRoad"               "rocky-road"
rename_if_match "caramel.cash\|caramel_cash\|caramelC"            "caramel-cashew"
rename_if_match "raspberry\|rasp"                                  "raspberry-cookie-swirl"
rename_if_match "mint.brow\|mint_brow\|mintBrow"                  "mint-brownie"
rename_if_match "choc.thunder\|choc_thunder\|chocolateThunder\|thunder" "chocolate-thunder"
rename_if_match "biscoff\|bisq\|biscuit"                          "biscoff"
rename_if_match "peanut\|pb.cook\|pb_cook\|peanutButter"         "pb-cookies"
rename_if_match "cookie.dough\|cookie_dough\|cookieDough\|m.m"   "cookie-dough"
rename_if_match "cotton.candy\|cotton_candy\|cottonCandy"         "cotton-candy"
rename_if_match "strawberry.cheese\|straw.*cheese\|cheesecake"   "strawberry-cheesecake"
rename_if_match "birthday\|birth"                                  "birthday-cake"
rename_if_match "peppermint\|pepper.mint"                         "peppermint-choc-spray"
rename_if_match "malted.milk\|malted_milk\|maltedMilk"            "malted-milk"

echo ""
echo "Done! Files in images/flavors/:"
ls -1 "$FLAVORS_DIR" 2>/dev/null || echo "(empty)"
echo ""
echo "⚠️  Any unmatched files were left as-is. Check above for expected names."
