#!/bin/bash -x

arr=()
echo "Enter an num: "
read num
if [ $num -lt 1 ]
then
  echo "not allowed"
  exit 1
else
for ((i=2; i<num; i++))
do
  if [ $(($num%$i)) == 0 ]
  then
    echo "Factor is:" $i
	arr+=($i)
   fi
done
    echo "not a factor: "
fi

 echo ${arr[@]}
 
 
