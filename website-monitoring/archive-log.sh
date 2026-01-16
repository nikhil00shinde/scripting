#!/usr/bin/env bash

# Directory where logs are stored
LOG_DIR="$HOME/path"

# Get yesterday's date 
YESTERDAY=$(date -d "yesterday" +"%Y-%m-%d")
YESTERDAY_LOG="$LOG_DIR/file_${YESTERDAY}.log"
YESTERDAY_ARCHIVE="$LOG_DIR/log_${YESTERDAY}.tar.gz"
ARCHIVE_LOG="$LOG_DIR/archive_log.log"

if [ -f $YESTERDAY_LOG ] && [ ! -f $YESTERDAY_ARCHIVE ]; then
  tar -czf "$YESTERDAY_ARCHIVE" "$YESTERDAY_LOG"
  rm $YESTERDAY_LOG
  echo "$(date) | Archived $YESTERDAY_LOG " >> $ARCHIVE_LOG
else 
  echo "$(date) | Nothing to archive or already archive. " >> $ARCHIVE_LOG
fi
