# Monitor Web Service and Alert on Failure


#!/bin/bash


# URL of the web service to monitor
URL="https://nikhilshinde.me"

# Send a request and capture the HTTP status code
HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" "$URL")


# Check if the HTTP status code indicates a failures

if [[ "$HTTP_STATUS" -ne 200 ]]; then
	# send an alert (this can be an email, a slack message etc.)
	# echo "Web Service at $URL is down: HTTP status code $HTTP_STATUS" | mail -s "Web Service Alert" your_email@example.com
	echo "Web Service at $URL is down: HTTP status code $HTTP_STATUS"
else
	echo "Working Fine !!! "
fi
