#!/bin/bash
alphabet="abcdefghijklmnopqrstuvwxyz"
len=${#alphabet}

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  ALPHABET STACK"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo ""
echo "--- LEFT: shrink"
for (( i=0; i<=len; i++ )); do
    pad=$(printf '%*s' "$i" "")
    str="${alphabet:$i}"
    printf "::: size = %2d  [%-26s]\n" "${#str}" "$pad$str"
done

echo ""
echo "--- RIGHT: shrink"
for (( i=len; i>=0; i-- )); do
    str="${alphabet:0:$i}"
    printf "::: size = %2d  [%-26s]\n" "${#str}" "$str"
done

echo ""
echo "--- BOTH: RIGHT shrink + LEFT "
for (( i=0; i<=len; i++ )); do
    right_str="${alphabet:0:$((len - i))}"
    left_pad=$(printf '%*s' "$i" "")
    left_str="${alphabet:$i}"
    left_content="$left_pad$left_str"
    printf "::: size = %2d  [%-26s]  [%-26s]\n" \
        "${#right_str}" "$right_str" "$left_content"
done