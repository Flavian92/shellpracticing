#!/bin/bash

# Set the string with leading and trailing commas
my_string=",, Hello, World! ,,"

# Trim leading and trailing commas using parameter expansion
trimmed_string="${my_string#"${my_string%%[!,]*}"}"
trimmed_string="${trimmed_string%"${trimmed_string##*[!,]}"}"

# Print the trimmed string
echo "Trimmed string: '$trimmed_string'"
