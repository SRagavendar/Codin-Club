#!/bin/bash
declare -A Month
for ((count=0;count<50;count++))
do
    random=$((RANDOM%12 + 1))
    if [[ ${Month[$random]} == null ]]
    then
        Month[$random]=1
    else
        Month[$random]=$((Month[$random]+1 ))
    fi
done
for i in ${!Month[@]}
do
    echo "Month $i has ${Month[$i]} occurrences "
done