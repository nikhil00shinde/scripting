#!/bin/bash

if [ -t 1 ]; then
  GREEN=$(tput setaf 2)
  RED=$(tput setaf 1)
  CYAN=$(tput setaf 6)
  RESET=$(tput sgr0)
else
  GREEN=""; RED=""; CYAN=""; RESET=""
fi

if [ -z "$1" ]; then
  echo "Usage: $0 <source_dir> [destination_dir] [log_file]"
  exit 1
fi

src_dir="$1"
backup_dir="${2:-$HOME/backups}"
log_file="${3:-}"
date_str=$(date +%F)
archive_name="$(basename "$src_dir")_${date_str}.tar.gz"
archive_path="${backup_dir}/${archive_name}"

mkdir -p "$backup_dir"

log() {
  local level="$1"; shift
  local msg="$*"
  local time=$(date '+%Y-%m-%d %H:%M:%S')
  local color="$CYAN"
  [ "$level" = "OK" ] && color="$GREEN"
  [ "$level" = "ERROR" ] && color="$RED"
  echo -e "${color}[$time][$level] $msg${RESET}"
  [ -n "$log_file" ] && echo "[$time][$level] $msg" >> "$log_file"
}

if [ ! -d "$src_dir" ]; then
  log ERROR "Source folder not found: $src_dir"
  exit 2
fi

log INFO "Creating backup at $archive_path"
tar -czf "$archive_path" "$src_dir"

if [ $? -eq 0 ]; then
  log OK "Backup successful!"
else
  log ERROR "Backup failed!"
fi
