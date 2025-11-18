#!/usr/bin/env bash

# Input file containing IP addresses
INPUT_FILE="$(pwd)/sample.txt"
echo $INPUT_FILE
# function to validate an IP addresses

validate_ip() {
  local ip="$1"
  # Regex pattern 
  local pattern="^([0-9]{1,3}\.){3}[0-9]{1,3}$"

  if [[ $ip =~ $pattern ]]; then
    IFS='.' read -r i1 i2 i3 i4 <<< "$ip"

    # Check if each octet is in the valid range (0-255)
    if (( i1 >= 0 && i1 <= 255 )) && (( i2 >= 0 && i2 <= 255 )) && (( i3 >= 0 && i3 <= 255 )) && (( i3 >= 0 && i3 <= 255 )) && (( i4 >= 0 && i4 <= 255 )); then
      echo "$ip is valid."
    else
      echo "$ip is invalid (octets out of range)."
    fi
  else
    echo "$ip is invalid (format error)."
  fi
}


# Read each line from the input file and validate the IPs
while IFS= read -r line; do 
  validate_ip "$line"
done < "$INPUT_FILE"
