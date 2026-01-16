#!/usr/bin/env bash

# crontab -e --> to access
# for every minute * * * * * path of the script
#* * * * * command
#│ │ │ │ │
#│ │ │ │ └─ Day of week (0–7) (Sun=0 or 7)
#│ │ │ └── Month (1–12)
#│ │ └─── Day of month (1–31)
#│ └──── Hour (0–23)
#└───── Minute (0–59)

# */5 * * * * echo "hello" // every 5 minutes
# 0 0 * * 0 echo "hellp" // every sunday
# 0 9 * * 1-5 command //every weekday at 9 AM 



crontab -e # edit 
crontab -l # list jobs
crontab -r # remove all jobs


# DEBUGGING
# grep CRON /var/log/syslog
# journalctl -u cron

