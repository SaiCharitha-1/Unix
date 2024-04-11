#!/bin/bash

# Check if host and port are provided
if [ $# -lt 2 ]; then
    echo "Usage: $0 <host> <port>"
    exit 1
fi

# Extract host and port
host="$1"
port="$2"

# Check if host and port are provided
if [ -z "$host" ] || [ -z "$port" ]; then
    echo "Both host and port are required."
    exit 1
fi

# Check if telnet command is available
if ! command -v telnet &> /dev/null; then
    echo "telnet command is not available."
    exit 1
fi

# Run telnet command
telnet "$host" "$port"

