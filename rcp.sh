#!/bin/bash

# Check if source and destination files are provided
if [ $# -lt 2 ]; then
    echo "Usage: $0 <source_file> <destination_host>:<destination_file>"
    exit 1
fi

# Extract source and destination information
source_file="$1"
destination_host="${2%%:*}"
destination_file="${2##*:}"

# Check if the source file exists
if [ ! -f "$source_file" ]; then
    echo "Source file '$source_file' does not exist."
    exit 1
fi

# Check if the destination host is provided
if [ -z "$destination_host" ]; then
    echo "Destination host is required."
    exit 1
fi

# Check if the destination file is provided
if [ -z "$destination_file" ]; then
    echo "Destination file is required."
    exit 1
fi

# Copy the file using rcp
rcp "$source_file" "$destination_host":"$destination_file"

# Check if the copy operation was successful
if [ $? -eq 0 ]; then
    echo "File '$source_file' copied successfully to '$destination_host:$destination_file'."
else
    echo "Failed to copy file '$source_file' to '$destination_host:$destination_file'."
    exit 1
fi

