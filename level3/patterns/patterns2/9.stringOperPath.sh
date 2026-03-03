#!/bin/bash

# =============================================================================
# 2_string_operators.sh — Bash String Operators
# Covers: length, substring, prefix strip, suffix strip
# =============================================================================

STR="/home/usr1/gwu/csci6418_linux/linux/classes/2_bash/scripts/0_exercises"

echo "========================================"
echo " STRING OPERATORS"
echo "========================================"
echo ""
echo "Original : $STR"
echo "Length   : ${#STR}"

echo ""
echo "---- Substring Extraction ---------------"
echo "  \${STR:0:5}    -> ${STR:0:5}"
echo "  \${STR:6:4}    -> ${STR:6:4}"
echo "  \${STR: -12}   -> ${STR: -12}"

echo ""
echo "---- Prefix Strip -----------------------"
echo "  \${STR#*/}     -> ${STR#*/}"      # remove up to first /
echo "  \${STR##*/}    -> ${STR##*/}"     # remove up to last  / (basename)

echo ""
echo "---- Suffix Strip -----------------------"
echo "  \${STR%/*}     -> ${STR%/*}"      # remove from last  / (dirname)
echo "  \${STR%%/*}    -> ${STR%%/*}"     # remove from first /

echo ""
echo "---- Substitution -----------------------"
STR2="hello world hello"
echo "  String         : $STR2"
echo "  Replace first  : \${STR2/hello/HI}  -> ${STR2/hello/HI}"
echo "  Replace all    : \${STR2//hello/HI} -> ${STR2//hello/HI}"

echo ""
echo "========================================"
echo " PROGRESSIVE PREFIX STRIP (shrink left)"
echo "========================================"
variale="$STR"
echo "starting with: $variale"
while [[ "$variale" == */* ]]; do
    variale="${variale#*/}"
    printf "string variale changed to: %s\n" "$variale"
done
printf "string variale changed to: \n"

echo ""
echo "========================================"
echo " PROGRESSIVE SUFFIX STRIP (shrink right)"
echo "========================================"
variale="$STR"
echo "starting with: $variale"
while [[ "$variale" == */* ]]; do
    variale="${variale%/*}"
    printf "string variale changed to: %s\n" "$variale"
done
printf "string variale changed to: \n"
