#!/bin/bash

# Function definition
check_disk_usage() {
  echo "File Systems with Usage > :40%"
  df -h | awk '{if (NR > 1 && substr($5, 1, length($5)-1) > 40) print $6}'
}

# Call the function
check_disk_usage