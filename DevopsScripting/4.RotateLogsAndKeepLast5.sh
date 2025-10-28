# Bash Script that moves the current log file to a new name and deletes the oldest log files if there are more than 5.

#!/bin/bash

#Define the log file and the directory
LOG_FILE="~/temp/logfile.log"
LOG_DIR="~/temp"
MAX_LOG_FILES=5


# Rotate the logs
if [ -f "$LOG_FILE" ]: then
	# Move the current log file to a new name with a timestamp
	mv "$LOG_FILE" "$LOG_DIR/logfile_$(date +'%Y%m%d_%H%M%S').log" 
fi

# Create a new empty log file
touch "$LOG_FILE"

# Remove old log files if there are more than MAX_LOG_FILES
cd "$LOG_DIR" || exit
ls -tp | grep -v '/$' | tail -n +$((MAX_LOG_FILES + 1)) | xargs -I {} rm -- {}

# Log the rotation activity
echo "Log rotation performed on $(date)" >> "$LOG_DIR/log_rotation.log"

