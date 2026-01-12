#!/usr/bin/env bash

if ! [ -x "$(command -v jq)" ]; then
    echo "jq is not installed or not in PATH"
    exit 1
fi

if [[ $# -eq 1 ]]; then
    if [[ $1 =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
        echo "We got an IP address: $1"
        link="http://ip-api.com/json/$1"
        response=$(curl -s $link)
        echo $response | jq '"Status: \(.status)"'
        echo $response | jq '"Country: \(.country)"'
        echo $response | jq '"RegionName: \(.regionName)"'
        echo $response | jq '"City: \(.city)"'
    else 
        echo "Invalid IP address."
        exit 1
    fi
else
    echo "Please provide a single IP address as an argument."
    exit 1
fi