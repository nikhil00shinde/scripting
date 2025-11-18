#!/usr/bin/env bash


# Input file containing server addresses
INPUT_FILE="$(pwd)/server.txt"


# Function to ping a server
ping_server() {
  local server="$1"

  # ping the server and check the result
  if ping -c 1 "$server" &> /dev/null; then
    echo "$server is reachable."
  else
    echo "$server is not reachable."
  fi
}

# Check if the input file exists
if [[ ! -f "$INPUT_FILE" ]]; then
  echo "Input file not found: $INPUT_FILE"
  exit 1
fi

# Read each line from the input file and ping the servers
while IFS= read -r line; do
  ping_server "$line"
done < "$INPUT_FILE"


