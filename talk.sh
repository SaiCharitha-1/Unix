#!/bin/bash

# Check if a username is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 student"
    exit 1
fi

# Check if the username is provided
if [ -z "$1" ]; then
    echo "Username is required."
    exit 1
fi

# Check if the 'talk' command is available
if ! command -v talk &>/dev/null; then
    echo "The 'talk' command is not available."
    exit 1
fi

# Start the talk session with the specified user
talk "$1"

