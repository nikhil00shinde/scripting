#!/usr/bin/env bash

echo "Date & Time:"
date 
echo 

echo "Uptime:"
uptime 
echo 

echo "Logged-in users:"
w 
echo 

echo "Disk usage:"
df -h / 
echo 

echo "Memory usage:"
free -m 
echo 

echo "CPU summary:"
top -b | head -5 
echo 

echo "Open TCP ports:"
ss -tuln 
echo 

echo "Network summary:"
ss -s 
echo 

echo "Running processes:"
ps aux --sort=%cpu | head -10
echo 

echo "System stats (vmstat):"
vmstat 1 5
echo 

echo "Memory:"
free -m | xargs | awk '{print "Free/total Memory: " $17 " / " $8 " MB"}'
echo 

echo "Out of Memory detection:"
start_log=$(head -1 /var/log/messages | cut -x 1-12)
oom=$(grep -ci kill /var/log/messages)
echo -n "OOM errors since $start_log : " $oom
echo 

