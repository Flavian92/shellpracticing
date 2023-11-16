#!/bin/bash

source_dir="/mnt/c/training/test"
destination_dir="/mnt/c/training/test1"

# Loop through each filename in the files.txt file
while IFS= read -r filename; do
  timestamp=$(date +%Y%m%d%H)
  new_filename="${filename}_${timestamp}.txt"
  touch "$source_dir/$new_filename"
  echo "Created: $new_filename"
  source_file="$source_dir/$new_filename"
  destination_file="$destination_dir/$new_filename"

  # Check if a file with the same name already exists in the destination directory
  if [ -f "$destination_file" ]; then
    # Move the existing file to a backup file with a .bak extension
    backup_file="$destination_dir/${filename}.bak"
    mv "$destination_file" "$backup_file"
    echo "Moved existing file: $destination_file to $backup_file"
  fi

  # Move the new file from the source directory to the destination directory
  mv "$source_file" "$destination_dir"
  echo "Moved: $new_filename"
done < "files.txt"