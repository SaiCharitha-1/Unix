#!/bin/bash

# Check if a filename is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 states.txt"
    exit 1
fi

# Check if the file exists
if [ ! -f "$1" ]; then
    echo "File '$1' does not exist."
    exit 1
fi

# Get line count
lines=$(wc -l < "$1")
echo "Number of lines: $lines"

# Get word count
words=$(wc -w < "$1")
echo "Number of words: $words"

# Get byte count
bytes=$(wc -c < "$1")
echo "Number of bytes: $bytes"

