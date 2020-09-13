#!/bin/bash
toss=$(($(($RANDOM%10))%2))
if [ $toss -eq 1 ]; then
    echo "Its Heads"
else
    echo "Its Tails"
fi