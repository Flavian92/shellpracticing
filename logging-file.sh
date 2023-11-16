#!/bin/bash

log_file="/mnt/c/training/test1/logfile.log"

# Function to log messages
log_message() {
  local message="$1"
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $message" >> "$log_file"
}

# Log messages
log_message "Starting script execution."

# Commands test 
df -h
ls

# Error handling and logging
if [ $? -ne 0 ]; then
  log_message "Error: Command $comand1 failed."
fi

# More commands
ip a|grep eth0


# Log completion
log_message "Script execution completed."