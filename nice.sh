#!/bin/bash

# Check if a command is provided as argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <command>"
    exit 1
fi

# Run the provided command with a nice value of 10
nice -n 10 "$@"

