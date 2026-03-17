#!/bin/bash
# ============================================================
# 06 - SUBDIRECTORY LIST WITH ACCESS STATUS
# Lists subdirs and checks read/write/execute access
# Usage: ./06_subdir_list.sh [path]
# ============================================================

TARGET="${1:-.}"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  SUBDIRECTORY LIST WITH ACCESS STATUS"
echo "  Path: $TARGET"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if [[ ! -d "$TARGET" ]]; then
    echo "ERROR: '$TARGET' is not a directory."
    exit 1
fi

echo ""
printf "  %-30s %-6s %-6s %-6s %-10s\n" "DIRECTORY" "READ" "WRITE" "EXEC" "PERMISSIONS"
printf "  %-30s %-6s %-6s %-6s %-10s\n" "─────────────────────────────" "────" "─────" "────" "──────────"

found=0
while IFS= read -r -d '' dir; do
    name=$(basename "$dir")

    # Access checks
    [[ -r "$dir" ]] && r="✔" || r="✘"
    [[ -w "$dir" ]] && w="✔" || w="✘"
    [[ -x "$dir" ]] && x="✔" || x="✘"

    # Permissions string (ls style)
    perms=$(stat -c "%A" "$dir" 2>/dev/null || stat -f "%Sp" "$dir" 2>/dev/null)

    printf "  %-30s %-6s %-6s %-6s %-10s\n" "$name/" "$r" "$w" "$x" "$perms"
    found=1
done < <(find "$TARGET" -maxdepth 1 -mindepth 1 -type d -print0 | sort -z)

if [[ $found -eq 0 ]]; then
    echo "  (no subdirectories found)"
fi

echo ""
echo "--- Legend ---"
echo "  READ  (r): can list contents"
echo "  WRITE (w): can create/delete files inside"
echo "  EXEC  (x): can enter (cd into) the directory"