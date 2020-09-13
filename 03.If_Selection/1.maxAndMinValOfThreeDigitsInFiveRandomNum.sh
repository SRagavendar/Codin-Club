#!/bin/bash
	
Max=999
Min=100
Diff=$((Max-Min+1))
a=$(($(($RANDOM%$Diff))+Min))
echo "First randomly generated number is " $a
b=$(($(($RANDOM%$Diff))+Min))
echo "Second randomly generated number is " $b
c=$(($(($RANDOM%$Diff))+Min))
echo "Third randomly generated number is " $c
d=$(($(($RANDOM%$Diff))+Min))
echo "Fourth randomly generated number is " $d
e=$(($(($RANDOM%$Diff))+Min))
echo "Fifth randomly generated number is " $e
	
array=($a $b $c $d $e)
max=${array[0]}
min=${array[0]}
for i in "${array[@]}"
do
    if [[ "$i" -gt "$max" ]]; then
        max="$i"
    fi
    if [[ "$i" -lt "$min" ]]; then
        min="$i"
    fi
done
echo "Maximum is : $max"
echo "Minimum is : $min"