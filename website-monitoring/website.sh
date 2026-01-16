#!/usr/bin/env bash

URL="https://github.com"

LOG_DIR="$HOME/website_health_logs"


mkdir -p $LOG_DIR

TODAY=$(date +"%Y-%m-%d")

LOG_FILE="$LOG_DIR/health_log_$TODAY.log"

response=$(curl -o /dev/null -s -A "Mozilla/5.0" -w "%{http_code} %{time_total}" $URL)


status_code=$(echo $response | awk '{ print $1 }')

response_time=$(echo $response | awk '{ print $2 }')

# SET TIME ZONE
# timedatectl set-timezone Asia/Kolkata


timestamp=$(date +"%Y-%m-%d %H:%M:%S")

echo "$timestamp | Status code: $status_code | Response Time: ${response_time}s" >> "$LOG_FILE"





#######
# CRONJOB
# * (minute) * (hrs) * (day of the month) * (years) * (day in a week)
#
#####




# Check health of the website 
# by checking the status code and time it took to respond back.
# store the information in the log file after every 20 sec
# and archive the log file


# SOME Website will send (999) [suspicicous activity] code in response if we use curl ex. Linkedin
# TRICK: we need to make sure that the request we are sending is from browser
