#!/bin/bash
# ============================================================
# DIRECTORY CONTENTS LIST
# Shows file/dir counts and long listing
# ============================================================

TARGET="${1:-.}"   # default to current dir if no arg given

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  DIRECTORY CONTENTS: $TARGET"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if [[ ! -d "$TARGET" ]]; then
    echo "ERROR: '$TARGET' is not a directory."
    exit 1
fi

# Count files and directories
num_files=$(find "$TARGET" -maxdepth 1 -type f | wc -l)
num_dirs=$(find  "$TARGET" -maxdepth 1 -type d | wc -l)
num_dirs=$(( num_dirs - 1 ))   # subtract the dir itself

echo ""
echo "  Files       : $num_files"
echo "  Directories : $num_dirs"
echo "  Total items : $(( num_files + num_dirs ))"
echo ""
echo "--- Long Listing ---"
ls -lah "$TARGET"
echo ""
echo "--- Files only ---"
find "$TARGET" -maxdepth 1 -type f -printf "  %f\n" | sort
echo ""
echo "--- Subdirectories only ---"
find "$TARGET" -maxdepth 1 -mindepth 1 -type d -printf "  %f/\n" | sort