#!/bin/bash
# ============================================================
# 09 - FILE DISPLAY IN 2 FORMS: by size and by name
# Usage: ./09_file_display.sh [path]
# ============================================================

TARGET="${1:-.}"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  FILE DISPLAY: $TARGET"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if [[ ! -d "$TARGET" ]]; then
    echo "ERROR: '$TARGET' is not a directory."
    exit 1
fi

echo ""
echo "━━━━━━ FORM 1: Sorted by NAME (A→Z) ━━━━━━"
echo ""
printf "  %-40s %10s %s\n" "FILENAME" "SIZE" "LAST MODIFIED"
printf "  %-40s %10s %s\n" "────────────────────────────────────────" "──────────" "─────────────────────"

while IFS= read -r -d '' file; do
    fname=$(basename "$file")
    size=$(du -sh "$file" 2>/dev/null | cut -f1)
    mtime=$(stat -c "%y" "$file" 2>/dev/null | cut -d'.' -f1)
    printf "  %-40s %10s %s\n" "$fname" "$size" "$mtime"
done < <(find "$TARGET" -maxdepth 1 -type f -print0 | sort -z)

echo ""
echo "━━━━━━ FORM 2: Sorted by SIZE (largest first) ━━━━━━"
echo ""
printf "  %-10s %-40s %s\n" "SIZE" "FILENAME" "LAST MODIFIED"
printf "  %-10s %-40s %s\n" "──────────" "────────────────────────────────────────" "─────────────────────"

# Build array of "bytes filename" then sort numerically
declare -a file_entries
while IFS= read -r -d '' file; do
    bytes=$(stat -c "%s" "$file" 2>/dev/null || echo 0)
    fname=$(basename "$file")
    mtime=$(stat -c "%y" "$file" 2>/dev/null | cut -d'.' -f1)
    size_hr=$(du -sh "$file" 2>/dev/null | cut -f1)
    file_entries+=("$bytes|$fname|$size_hr|$mtime")
done < <(find "$TARGET" -maxdepth 1 -type f -print0)

# Sort by byte count descending
IFS=$'\n' sorted=($(printf '%s\n' "${file_entries[@]}" | sort -t'|' -k1 -rn))
unset IFS

for entry in "${sorted[@]}"; do
    IFS='|' read -r bytes fname size_hr mtime <<< "$entry"
    printf "  %-10s %-40s %s\n" "$size_hr" "$fname" "$mtime"
done

echo ""
echo "  Total files: $(find "$TARGET" -maxdepth 1 -type f | wc -l)"
echo "  Total size : $(du -sh "$TARGET" 2>/dev/null | cut -f1)"