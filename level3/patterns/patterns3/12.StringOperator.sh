#!/usr/bin/env bash
# ============================================================
# 14 - STRING OPERATORS
# Fix: b"stroy" → b="stroy", use echo instead of printf
# ============================================================
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  String Operators"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

a="love"
b="stroy"
c="qw dojf"
d="${a}-${b}"

echo ""
echo "  a = '$a'"
echo "  b = '$b'"
echo "  c = '$c'"
echo "  d = a-b = '$d'"

echo ""
echo "--- Length ---"
echo "  \${#a} = ${#a}"
echo "  \${#b} = ${#b}"
echo "  \${#c} = ${#c}"
echo "  \${#d} = ${#d}"

echo ""
echo "--- Uppercase / Lowercase ---"
echo "  a uppercase : '${a^^}'"
echo "  b uppercase : '${b^^}'"
echo "  d lowercase : '${d,,}'"

echo ""
echo "--- Concatenation ---"
echo "  a + b         : '${a}${b}'"
echo "  a + space + b : '${a} ${b}'"
echo "  a - b (dash)  : '${a}-${b}'"

echo ""
echo "--- Substring \${var:offset:len} ---"
echo "  d = '$d'"
echo "  \${d:0:4}  = '${d:0:4}'"
echo "  \${d:5}    = '${d:5}'"
echo "  \${d: -5}  = '${d: -5}'"

echo ""
echo "--- Replace ---"
echo "  Replace 'love' with 'hate' : '${d/love/hate}'"
echo "  Delete  'stroy'            : '${d/stroy/}'"

echo ""
echo "--- Strip path left and right ---"
path="/home/user/docs/file.txt"
echo "  path = '$path'"
echo "  Strip shortest left  (\${path#*/})  : '${path#*/}'"
echo "  Strip longest  left  (\${path##*/}) : '${path##*/}'"
echo "  Strip shortest right (\${path%/*})  : '${path%/*}'"
echo "  Strip extension      (\${path%.*})  : '${path%.*}'"
echo "  Strip all after dot  (\${path%%.*}) : '${path%%.*}'"

echo ""
echo "--- Check empty / not empty ---"
e=""
echo "  e = '' (empty)"
[[ -z "$e" ]] && echo "  -z e : is empty ✔"
[[ -n "$a" ]] && echo "  -n a : not empty ✔"