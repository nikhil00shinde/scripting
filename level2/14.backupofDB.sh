#!/usr/bin/env bash

# Database Credential
DB_USER="your_username"
DB_PASS="your_password"
DB_NAME="your_dbname"


# Backup directory
BACKUP_DIR="/path/to/backup/directory"

# Date format for the backup file 
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/$DB_NAME-backup-$DATE.sql"

# Create backup directory if it doesn't exit
mkdir -p "$BACKUP_FILE"

# Perform database backup using mysqldump
mysqldump -u "$DB_USER" -p "$DB_PASS" "$DB_NAME" > "$BACKUP_FILE"


# Check if the backup was successful
if [ $? -eq 0 ]; then
  echo "Database backup successful: $BACKUP_FILE"
else
  echo "Database backup failed"
fi
