#!/bin/bash

string="Hello, World!"

# Extract substring starting at index 7 and length 5
substring="${string:5:6}"

echo "Original String: $string with length: ${#string}"
echo "Extracted Substring: $substring"