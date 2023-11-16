#!/bin/bash

# Set the source directory
source_dir="/mnt/c/training/test"

# Save the current value of IFS
original_ifs=$IFS

# Set IFS to newline
IFS=$'/n'

# Loop through each file in the source directory
for file in "$source_dir"/*; do
  echo "File: $file"

  # Read the content of the file
  while IFS= read -r line; do
    echo "$line"
  done < "$file"

  echo "========================"
done

# Restore the original value of IFS
IFS=$original_ifs
