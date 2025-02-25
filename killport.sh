#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <port1> [port2] [port3] ..."
    exit 1
fi

for port in "$@"; do
    pids=$(netstat -ano | grep ":$port" | awk '{print $5}' | uniq)

    if [[ -z "$pids" ]]; then
        echo "❌ Port $port is not in use."
    else
        echo "🔍 Killing processes on port $port..."
        for pid in $pids; do
            taskkill //F //PID $pid && echo "✅ Killed PID $pid on port $port" || echo "❌ Failed to kill PID $pid on port $port"
        done
    fi
done

echo "✅ Done."