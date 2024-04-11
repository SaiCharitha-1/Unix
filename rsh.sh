#!/bin/bash

# Check if a hostname and command are provided
if [ $# -lt 2 ]; then
    echo "Usage: $0 <hostname> <command>"
    exit 1
fi

# Extract hostname and command
hostname="$1"
shift
command="$@"

# Check if the hostname is provided
if [ -z "$hostname" ]; then
    echo "Hostname is required."
    exit 1
fi

# Check if the command is provided
if [ -z "$command" ]; then
    echo "Command is required."
    exit 1
fi

# Check if the 'rsh' command is available
if ! command -v rsh &>/dev/null; then
    echo "The 'rsh' command is not available."
    exit 1
fi

# Execute the command on the remote system using rsh
rsh "$hostname" "$command"

