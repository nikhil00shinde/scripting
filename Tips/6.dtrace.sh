#!/usr/bin/env bash

# What actually gonna fork external command?
while read line; do
  name=$(echo "$line" | cut -d : -f 1)
  id=$(echo "$line" | cut -d : -f 2)
  desc=$(echo "$line" | cut -d : -f 3-)

  echo "$id: $name is $desc"
done < ./files/data.txt

# Check if the command is builtin
# type echo

# What command got forked?
dtrace -n 'proc::::exec-success /progenyof($target)/ { trace(curpsinfo->pr_psargs); }' -c ./6.dtrace.sh

# dtrace lets you trace what’s happening inside the system — system calls, function calls, I/O operations, CPU usage, etc.
