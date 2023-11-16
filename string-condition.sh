#!/bin/bash

string="Hello, World!"

# Check if the length of the string is greater than zero
if [ -n "$string" ]; then
    echo "String is greater than zero."
else
    echo "String is empty or has zero length."
fi
