#!/bin/bash

string="Hello-World-How-Are-You"
delimiter="-"

# Split the string into an array using parameter expansion
readarray -d "$delimiter" -t parts <<< "$string"

# Iterate over the array and print each part
for part in "${parts[@]}"; do
    echo "$part"
done
