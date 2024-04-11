#!/bin/bash

# Clear the screen
tput clear

# Get the number of columns and rows of the terminal
cols=$(tput cols)
rows=$(tput lines)
echo "Terminal size: $cols columns x $rows rows"

# Set terminal text color to red
tput setaf 1
echo "This is red text"

# Set terminal text color to green
tput setaf 2
echo "This is green text"

# Set terminal text color to default
tput sgr0

# Set terminal background color to yellow
tput setab 3
echo "This has a yellow background"

# Reset terminal background color
tput sgr0

# Move cursor to specific position
tput cup 10 20
echo "Cursor moved to row 10, column 20"

