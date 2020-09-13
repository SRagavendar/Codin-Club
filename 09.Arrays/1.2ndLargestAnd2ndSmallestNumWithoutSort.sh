#!/bin/bash
clear
maxcount=10
count=1
while [ "$count" -le $maxcount ]; do
        array[$count]=$(shuf -i 100-999 -n1)
        let "count += 1"
done
echo "${array[*]}"
largest=${array[0]}
secondGreatest='unset'
for((i=1; i < ${#array[@]}; i++))
do
  if [[ ${array[i]} > $largest ]]
  then
    secondGreatest=$largest
    largest=${array[i]}
  elif (( ${array[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${array[i]} > $secondGreatest ]]; }
  then
    secondGreatest=${array[i]}
  fi
done
echo "Largest = $largest"
echo "Second Greatest = $secondGreatest"
smallest=${array[10]}
secondSmallest='unset'
for((i=1; i < ${#array[@]}; i++))
do
  if [[ ${array[i]} < $smallest ]]
  then
    secondSmallest=$smallest
    smallest=${array[i]}
  elif (( ${array[i]} != $smallest )) && { [[ "$secondSmallest" = "unset" ]] || [[ ${array[i]} < $secondSmallest ]]; }
  then
    secondSmallest=${array[i]}
  fi
done
echo "Smallest = $smallest"
echo "Second Smallest = $secondSmallest"