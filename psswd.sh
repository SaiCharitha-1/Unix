#!/bin/bash

# Prompt user for username
read -p "Enter username: " username

# Check if the username is provided
if [ -z "$username" ]; then
    echo "Username is required."
    exit 1
fi

# Check if the user exists
if ! id "$username" &>/dev/null; then
    echo "User '$username' does not exist."
    exit 1
fi

# Prompt user for a new password
read -s -p "Enter new password for $username: " password
echo

# Prompt user to confirm the new password
read -s -p "Confirm new password: " password_confirm
echo

# Check if passwords match
if [ "$password" != "$password_confirm" ]; then
    echo "Passwords do not match. Please try again."
    exit 1
fi

# Change the user's password using the passwd command
echo "$password" | passwd --stdin "$username"

# Check if the password change was successful
if [ $? -eq 0 ]; then
    echo "Password for user '$username' has been successfully updated."
else
    echo "Failed to update password for user '$username'."
    exit 1
fi

