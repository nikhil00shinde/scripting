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

echo "Network summary:"
ss -s 
echo 

echo "Running processes:"
ps aux --sort=%cpu | head -10
echo 

echo "System stats (vmstat):"
vmstat 1 5
