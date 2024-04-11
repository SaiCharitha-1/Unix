#!/bin/bash

# Check if a hostname is provided as argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 student"
    exit 1
fi

# Check if the hostname is provided
if [ -z "$1" ]; then
    echo "Hostname is required."
    exit 1
fi

# Prompt user for username
read -p "Enter username for $1: " username

# Check if the username is provided
if [ -z "$username" ]; then
    echo "Username is required."
    exit 1
fi

# Attempt to login using rlogin
rlogin "$1" -l "$username"

