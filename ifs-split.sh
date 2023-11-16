#!/bin/sh

# Define a string with multiple words separated by spaces
my_string="Hello World! How are you?"

# Save the current value of IFS
original_ifs=$IFS

# Set IFS to space as the delimiter
IFS=' '

# Split the string into individual words and print each word
for word in $my_string; do
  echo "Word: $word"
done

# Restore the original value of IFS
IFS=$original_ifs

