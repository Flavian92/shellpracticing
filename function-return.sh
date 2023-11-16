#!/bin/bash

# Function definition with parameters
multiply() {
  local result=$(( $1 * $2 ))
  echo "Result: $result"
  return $result
}

# Calling the function and capturing the return value
multiply $1 $2
returned_value=$?
echo "Returned Value: $returned_value"