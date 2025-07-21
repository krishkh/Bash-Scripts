#!/bin/bash

# Log file path
LOG_FILE="$HOME/.termux/boot/log.txt"

# Array of URLs to monitor (add more as needed)
URLS=(
    "https://a.onrender.com/"
    "https://b.onrender.com"
)

# Ensure the script runs indefinitely
while true; do
    # Get current timestamp
    TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

    # Loop through each URL in the array
    for URL in "${URLS[@]}"; do
        if curl -I -s -f "$URL" > /dev/null; then
            echo "$TIMESTAMP: Successfully pinged $URL" >> "$LOG_FILE"
        else
            echo "$TIMESTAMP: Failed to ping $URL" >> "$LOG_FILE"
        fi
    done

    # Sleep for 1 minute (60 seconds) before the next cycle
    sleep 60
done
`
