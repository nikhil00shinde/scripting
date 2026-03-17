#!/usr/bin/env bash
# Usage: ./rename_files.sh <source_dir>

set -euo pipefail

SOURCE_DIR="${1:-.}"

if [[ ! -d "$SOURCE_DIR" ]]; then
  echo "Error: '$SOURCE_DIR' is not a directory." >&2
  exit 1
fi

SOURCE_DIR="$(realpath "$SOURCE_DIR")"

mapfile -t files < <(find "$SOURCE_DIR" -maxdepth 1 -type f | sort)

total="${#files[@]}"

if [[ "$total" -eq 0 ]]; then
  echo "No files found in '$SOURCE_DIR'."
  exit 0
fi

pad_width="${#total}"
counter=1
output=""

for filepath in "${files[@]}"; do
  filename="$(basename "$filepath")"
  clean_filename="${filename// /}"
  padded="$(printf "%0${pad_width}d" "$counter")"
  new_name="${padded}_${clean_filename}"
  output+="$new_name "
  (( counter++ ))
done

echo "${output% }"