#!/usr/bin/env bash

# Bad Script
# cat > data.txt << EOF
# dave:56 a cool guy
# james:23:jamws 1: also a cool guy
# james2:22:james 2: a cringe loser
# EOF

while read line; do
  name=$(echo "$line" | cut -d : -f 1)
  id=$(echo "$line" | cut -d : -f 2)
  desc=$(echo "$line" | cut -d : -f 3-)
  # piping to cut --> we forking an external command (Shell creates a new process to run a command)

  echo "$id: $name is $desc"
done < ./files/data.txt
# fork = “Make a new process.”
# exec = “Replace that process with the program I actually want to run.”

# Good Script
while IFS=: read -r name id desc; do
  echo "$id: $name is $desc"
done < ./files/data.txt

# IFS==> Internal field separator here (It’s a special shell variable that tells the shell how to split text into words.) 