#!/bin/bash


# Perform a daily backup of a database with a timestamp

# Provide credential
USER="name"
PASSWORD="password"
DATABASE="db"

if [ -z "$1" ]; then
	echo "Please the backup directory location!!!!"
fi

BACKUP_DIR="$1"

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")


BACKUP_FILE="$BACKUP_DIR/$(DATABASE)_backup_$TIMESTAMP.sql"

db -u "$USER" -p "$PASSWORD" "$DATABASE" > "$BACKUP_FILE"

if [ $? -eq 0]; then
	echo "Successfully created database" 
else
	echo "Error!!!"
fi
