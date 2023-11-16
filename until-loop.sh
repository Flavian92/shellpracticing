#!/bin/bash

counter=5
#The 'until loop' commands execute until a non-zero status is returned
until [ $counter -eq 0 ]; do
  echo "Countdown: $counter"
  counter=$((counter - 1))
done

echo "Done!"