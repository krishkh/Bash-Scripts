#!/bin/bash

# Check if port number is provided
if [ -z "$1" ]; then
    echo "Usage: ./killport.sh <port_number>"
    exit 1
fi

PORT=$1

# Get the list of PIDs using the port
PIDS=$(netstat -ano | grep ":$PORT" | awk '{print $5}' | uniq)

# Check if any process is using the port
if [ -z "$PIDS" ]; then
    echo "✅ Port $PORT is not in use."
    exit 0
fi

# Loop through PIDs and attempt to kill each
for pid in $PIDS; do
    echo "Attempting to kill process $pid using port $PORT..."
    
    # Kill process
    taskkill //F //PID $pid > /dev/null 2>&1

    # Check if the process is still running
    if ps -p $pid > /dev/null 2>&1; then
        echo "❌ Unable to kill process $pid."
    else
        echo "✅ Killed process $pid."
    fi
done

echo "🎯 Done!"
