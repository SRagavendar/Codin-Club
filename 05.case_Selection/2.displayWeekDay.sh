#!/bin/bash
echo -n "Enter the day of the week in number : "
read d
case $d in
1) echo -n "Sunday " ;;
2) echo -n "Monday " ;;
3) echo -n "Tuesday " ;;
4) echo -n "Wednesday " ;;
5) echo -n "Thursday " ;;
6) echo -n "Friday " ;;
7) echo -n "Saturday " ;;
esac