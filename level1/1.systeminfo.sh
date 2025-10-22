#!/bin/bash

# OS name
echo "OS: `uname`"

# Hostname 
echo "Hostname: `hostname`"


# since how many hour the system is running
uptime=$(uptime -p)
echo "Uptime: $uptime"


# Memory Usage
#memory=$(free -h)
#echo "Memory Usage: $memory"

# Disk Usage 
#disk=$(df -h)
#echo "Disk Usage: $disk"



# Memory Usage
echo "Memory Usage:"
free -h | awk 'NR==1 || NR==2'

# Disk Usage
echo "Disk Usage:"
df -h | grep -E '^Filesystem|/dev/'



# Number of users logged in
loggedIn=$(who | wc -l)
echo "Logged-in users: $loggedIn"

