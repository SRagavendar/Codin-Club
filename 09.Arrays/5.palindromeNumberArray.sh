#!/bin/sh
clear
read -p "Enter your final range number to check upto : " a
read -p "Enter your number to check divisibility : " d
i=1
while [ "$i" -le $a ]; do
        remainder=$(( i % $d ))
        [ "$remainder" -eq 0 ] && echo "$i is a multiple of $d" && array[i]=$i
        i=$(( i + 1 ))
done
printf "\n"
echo "Numbers divisible by $d from 1 to $a are : [ ${array[@]} ] "