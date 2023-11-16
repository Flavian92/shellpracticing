#!/bin/bash

source_dir="/mnt/c/training/test"
destination_dir="/mnt/c/training/test1"

# Loop through each filename in the files.txt file
while IFS= read -r filename; do
  timestamp=$(date +%Y%m%d%H%M%S)
  new_filename="${filename}_${timestamp}.txt"
  touch "$source_dir/$new_filename"
  echo "Created: $new_filename"
done < "files.txt"

# Move files from source to destination directory
for file in "$source_dir"/file*.txt; do
  if [ -f "$file" ]; then
    mv "$file" "$destination_dir"
    echo "Moved: $(basename "$file")"
  fi
done