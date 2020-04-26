#!/bin/bash -x

echo -n "Enter number"
read n

len=$(echo $n | wc -c)
len=$(( $len - 1 ))

echo "your number $n in words:"
for (( i=1; i<=$len; i++ ))
do
digit=$(echo $n | cut -c $i)
echo $digit 
  if [ $digit -eq 0 ]
  then
  echo -d "sunday " ;
  elif [ $digit -eq 1 ]
  then
  echo -d "Monday " ;
  elif [ $digit -eq 2 ]
  then
  echo -d "tuesday " ;
  elif [ $digit -eq 3 ]
  then
  echo -d "Wednesday " ;
  elif [ $digit -eq 4 ]
  then 
  echo -d "Thursday " ;
  elif [ $digit -eq 5 ]
  then 
  echo -d "friday " ;
  else
  echo -d "Saturday " ;
  fi
done
echo ""
