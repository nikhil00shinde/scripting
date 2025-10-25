#!/bin/bash

# Monitor Disk Usage and if over 80%



# Set the threshold for disk usage
THRESHOLD=2

# Get the current disk uage percentage for the root filesystem
USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//g')


# Check if usage exceeds the threshold
if [ "$USAGE" -gt "$THRESHOLD" ]; then
	# Send an alert (this can be an email, a slack message, etc)
	# echo "Disk usage is above ${THRESHOLD}%: currently at ${USAGE}%" | mail -s "Disk Usage Alert" mail@mail.com
	echo "Disk usage is above ${THRESHOLD}%: currently at ${USAGE}%"
fi 
