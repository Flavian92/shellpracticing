#!/bin/bash

counter=5
#The 'while loop' commands execute until a zero status is returned
while [ $counter -gt 1 ]; do
  echo "Countdown: $counter"
  counter=$((counter - 1))
done

echo "Done!"