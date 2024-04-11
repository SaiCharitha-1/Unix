#!/bin/bash

# Get the terminal filename
terminal=$(tty)

# Print the terminal filename
echo "Terminal filename: $terminal"

# Get the terminal type
terminal_type=$(tty -s && echo "$TERM" || echo "not a tty")
echo "Terminal type: $terminal_type"

