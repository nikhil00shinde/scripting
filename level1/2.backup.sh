#!/bin/bash

# backup.sh - compress and store backups


# 1.  Check if user gave a source directory
if [ -z "$1" ]; then
	echo "Usage: $0 <source_directory>"
	exit 1
fi

src_dir="$1"
backup_dir="/home/$USER/backups"
date_str=$(date +%F)
archive_name="$(basename "$src_dir")_${date_str}.tar.gz"
archive_path="${backup_dir}/${archive_name}"

# 2. Create backup directory if missing
mkdir -p "$backup_dir"

# 3. Check if source exists
if [ ! -d "$src_dir"]; then
	echo "Error: Source directory '$src_dir' not found."
	exit 2
fi

# 4. Create the archive
echo "Backing up '$src_dir' -> '$archive_path' ..."
tar -czf "$archive_path" "$src_dir"

# 5. Verify success
if [ $? -eq 0 ]; then
	echo "✅ Backup successful!"
	echo "File saved at: $archive_path"
else
	echo "❌ Backup failed!"
fi
