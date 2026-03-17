#!/bin/bash
# ============================================================
# 10 - ARGUMENTS ($), ARG COUNT, ARITHMETIC,
#      PATH STRIPPING, STRING CUTTING
# Usage: ./10_args_arith_path.sh arg1 arg2 arg3 ...
# ============================================================

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  RETRIEVING ARGUMENTS USING \$"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "  \$0  (script name)  : $0"
echo "  \$1  (1st arg)      : ${1:-(not provided)}"
echo "  \$2  (2nd arg)      : ${2:-(not provided)}"
echo "  \$3  (3rd arg)      : ${3:-(not provided)}"
echo "  \$@  (all args)     : $@"
echo "  \$*  (all as string): $*"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  COUNTING NUMBER OF ARGUMENTS"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "  \$#  (arg count) : $#"

if [[ $# -eq 0 ]]; then
    echo "  → No arguments passed."
elif [[ $# -eq 1 ]]; then
    echo "  → Exactly 1 argument passed."
else
    echo "  → $# arguments passed."
fi

echo ""
echo "  Iterating all args:"
i=1
for arg in "$@"; do
    echo "    [$i] $arg"
    (( i++ ))
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  ARITHMETIC OPERATIONS"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

a=20
b=7

echo "  a = $a,  b = $b"
echo ""
echo "  Addition       : a + b = $(( a + b ))"
echo "  Subtraction    : a - b = $(( a - b ))"
echo "  Multiplication : a * b = $(( a * b ))"
echo "  Division       : a / b = $(( a / b ))  (integer)"
echo "  Modulus        : a % b = $(( a % b ))"
echo "  Power          : a ^ b = $(( a ** b ))"

echo ""
echo "  Floating point with bc:"
echo "  a / b = $(echo "scale=4; $a / $b" | bc)"
echo "  sqrt(a) = $(echo "scale=4; sqrt($a)" | bc)"

echo ""
echo "  Increment / Decrement:"
x=5
echo "  x = $x"
(( x++ )); echo "  x++ → $x"
(( x-- )); echo "  x-- → $x"
(( x += 3 )); echo "  x += 3 → $x"
(( x *= 2 )); echo "  x *= 2 → $x"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  PATH STRIPPING (from left and right)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

path="/home/nikhil/projects/devops/scripts/deploy.sh"
echo "  Full path : $path"
echo ""

# Strip from LEFT (remove shortest prefix match)
echo "  --- Strip from LEFT ---"
echo "  Remove shortest prefix up to /  : ${path#*/}"
echo "  Remove longest  prefix up to /  : ${path##*/}   ← just filename"
echo ""

# Strip from RIGHT (remove shortest/longest suffix)
echo "  --- Strip from RIGHT ---"
echo "  Remove shortest suffix from .   : ${path%.*}    ← no extension"
echo "  Remove longest  suffix from /   : ${path%/*}    ← directory part"
echo ""

# Practical: extract parts
filename="${path##*/}"          # deploy.sh
dirname="${path%/*}"            # /home/nikhil/projects/devops/scripts
basename_noext="${filename%.*}" # deploy
ext="${filename##*.}"           # sh

echo "  Extracted parts:"
echo "    Filename         : $filename"
echo "    Directory        : $dirname"
echo "    Name (no ext)    : $basename_noext"
echo "    Extension        : $ext"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  STRING CUTTING  (\${var:offset:len})"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

str="Hello, Bash Scripting World!"
echo "  String : '$str'"
echo "  Length : ${#str}"
echo ""
echo "  \${str:0:5}     → '${str:0:5}'      (first 5 chars)"
echo "  \${str:7:4}     → '${str:7:4}'      (4 chars from pos 7)"
echo "  \${str:7}       → '${str:7}'  (from pos 7 to end)"
echo "  \${str: -6}     → '${str: -6}'        (last 6 chars)"
echo "  \${str: -6:5}   → '${str: -6:5}'       (5 chars from 6th-last)"

echo ""
echo "  --- Cutting with IFS / cut command ---"
csv="alpha:beta:gamma:delta:epsilon"
echo "  csv = '$csv'"
echo "  cut -d: -f1  → $(echo "$csv" | cut -d: -f1)"
echo "  cut -d: -f3  → $(echo "$csv" | cut -d: -f3)"
echo "  cut -d: -f2-4→ $(echo "$csv" | cut -d: -f2-4)"
echo "  cut -c1-5    → $(echo "$csv" | cut -c1-5)   (chars 1-5)"

echo ""
echo "  --- Cutting with parameter expansion ---"
url="https://github.com/nikhil/repo.git"
echo "  url = '$url'"
proto="${url%%://*}"          # https
rest="${url#*://}"            # github.com/nikhil/repo.git
host="${rest%%/*}"            # github.com
repo_path="${rest#*/}"       # nikhil/repo.git
repo="${repo_path%.git}"     # nikhil/repo

echo "  Protocol  : $proto"
echo "  Host      : $host"
echo "  Repo path : $repo_path"
echo "  Repo name : $repo"