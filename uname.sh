#!/bin/bash

# Get system name
system_name=$(uname -s)
echo "System name: $system_name"

# Get node (machine) name
node_name=$(uname -n)
echo "Node name: $node_name"

# Get kernel release
kernel_release=$(uname -r)
echo "Kernel release: $kernel_release"

# Get kernel version
kernel_version=$(uname -v)
echo "Kernel version: $kernel_version"

# Get machine hardware name
machine=$(uname -m)
echo "Machine hardware: $machine"

# Get processor type
processor=$(uname -p)
echo "Processor type: $processor"

# Get operating system name
operating_system=$(uname -o)
echo "Operating system: $operating_system"

