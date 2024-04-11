#!/bin/bash

# Define list of machines
machines=("172.50.11.106" "172.50.9.213" "127.0.0.1")  # Add your machine names or IPs here

# SSH username
username="your_username"

# Function to get memory usage
get_memory_usage() {
    ssh "$username@$1" "free -m | awk 'NR==2{printf \"Memory Usage: %.2f%%\\n\", \$3*100/\$2}'"
}

# Function to get CPU usage
get_cpu_usage() {
    ssh "$username@$1" "top -bn1 | grep 'Cpu(s)' | sed 's/.*, *\([0-9.]*\)%* id.*/\1/' | awk '{print \"CPU Usage: \"100 - \$1\"%\"}'"
}

# Iterate over machines
for machine in "${machines[@]}"; do
    echo "Machine: $machine"
    get_memory_usage "$machine"
    get_cpu_usage "$machine"
    echo "-----------------------------------------"
done

