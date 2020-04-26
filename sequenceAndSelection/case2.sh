#!/bin/bash -x
echo -n "Enter number"
read n

len=$(echo $n | wc -c)
len=$(( $len - 1 ))

echo "your number $n in words:"
for (( i=1; i<=$len; i++ ))
do
digit=$(echo $n | cut -c $i)
case $digit in
  0)  echo -d "Sunday " ;;
  1)  echo -d "Monday " ;;
  2)  echo -d "tuesday " ;;
  3)  echo -d "Wednesday " ;;
  4)  echo -d "Thursday " ;;
  5)  echo -d "friday " ;;
  6)  echo -d "saturday " ;;
  esac
done
echo ""
