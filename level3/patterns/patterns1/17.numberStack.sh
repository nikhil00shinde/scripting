#!/bin/bash
MAX=9

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  NUMBER STACK (digit string style)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# Build full string: 01234567899876543210
full=""
for (( i=0; i<=MAX; i++ )); do full="${full}${i}"; done
for (( i=MAX; i>=0; i-- )); do full="${full}${i}"; done
total=${#full}   # 20 chars

echo ""
echo "  Full string : $full"
echo "  Length      : $total"

echo ""
echo "--- LEFT: shrink from front ---"
for (( i=0; i<=total; i++ )); do
    pad=$(printf '%*s' "$i" "")
    str="${full:$i}"
    printf "::: size = %2d  [%-20s]\n" "${#str}" "$pad$str"
done

echo ""
echo "--- RIGHT: shrink from back ---"
for (( i=total; i>=0; i-- )); do
    str="${full:0:$i}"
    printf "::: size = %2d  [%-20s]\n" "${#str}" "$str"
done

echo ""
echo "--- BOTH: RIGHT shrink + LEFT shrink side by side ---"
for (( i=0; i<=total; i++ )); do
    right_str="${full:0:$((total - i))}"
    left_pad=$(printf '%*s' "$i" "")
    left_str="${full:$i}"
    left_content="$left_pad$left_str"
    printf "::: size = %2d  [%-20s]  [%-20s]\n" \
        "${#right_str}" "$right_str" "$left_content"
done