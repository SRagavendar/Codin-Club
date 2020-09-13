#!/bin/bash
clear
read -p "Enter the number of inputs you want to give : " n
i=1
while [ $i -le $n ]; do
        read -p "Enter the element : " a
        array[i]=$a
        i=`expr $i + 1`
done
echo "The array is : [${array[@]}]"
sum=$(IFS=+; echo "$((${array[*]}))")
if [ $sum -eq 0 ]; then
        echo "The sum of elements of array [${array[@]}] is ZERO"
else
        echo "The sum of elements of array [${array[@]} is NOT ZERO"
fi
echo "$sum"