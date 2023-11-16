#!/bin/bash

# Function definition
check_top_process_usage() {
  echo "Top Process Usage:"
  top -b -n 1 | tail -n +8 | awk '{print $12,$9}' | head -n 5
}

# Call the function
check_top_process_usage
