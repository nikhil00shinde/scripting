# This is the bash script that cleans up the /tmp directory by removing files taht are older than 7 days.


#!/bin/bash

# Define the directory to clean
TMP_DIR="/tmp"


# Find and remove files older than 7 days
find "$TMP_DIR" -type f -mtime +7 -exec rm -f {} \;

# More safe options
find ./ -type f -mtime +7 -print;

# Optional: Log the cleanup activity
echo "Cleaned up files older than 7 days in $TMP_DIR on $(data)" >> /var/log/tmp_cleanup.log
