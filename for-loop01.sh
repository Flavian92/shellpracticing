#!/bin/bash

directory="/mnt/c/training/test1"
filesouce="/mnt/c/training/files.txt"
# List the file names in the directory using ls command
for file in $(cat $filesouce); do
    echo "$directory/$file"  # Print the file name with the directory path
done