#!/usr/bin/env bash


while true; do 
  clear

  echo "System Resource Monitoring"
  echo "--------------------------"

  # Display 
  echo "CPU Usage: "
  top -n 1 -b | grep "Cpu"

  # Display Memory Usage
  echo -e "\nMemory Usage:"
  free -h 

  # Display disk space usage 
  echo -e "\nDisk Space Usage"
  # df -h 
  df -k


  sleep 5
done
