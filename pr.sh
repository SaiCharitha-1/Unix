#!/bin/bash

# Check if a filename is provided as argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 states.txt>"
    exit 1
fi

# Check if the file exists
if [ ! -f "$1" ]; then
    echo "File '$1' does not exist."
    exit 1
fi

# Display the content of the file with pagination using the pr command
pr "$1"

