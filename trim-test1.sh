#!/bin/bash

my_str="Hello;To;SDA;Students"
my_arr=$(echo "$my_str" | tr ";" "\n")

for i in $my_arr; do
    echo "$i"
done
