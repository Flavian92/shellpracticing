#!/bin/bash

string1="apple"
string2="orange"

if [ $string1 \> $string2 ]; then
    echo "$string1 is greater than $string2."
else
    echo "$string1 is not greater than $string2."
fi


# ###########equal or not

if [[ $string1 = $string2 ]]; then
    echo "$string1 is equal $string2."
else
    echo "$string1 is not equal with $string2."
fi

#############

if [[ $string1 != $string2 ]]; then
    echo "$string1 is not equal with $string2."
else
    echo "$string1 is  equal with $string2."
fi