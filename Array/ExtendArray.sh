#!/bin/bash -x

declare -A arr
MAXCOUNT=10
COUNT=0
while [ "$COUNT" -le $MAXCOUNT ]
do
   arr[$COUNT]=$(( (RANDOM%100) + 99))
   let "COUNT += 1"
done
echo ${arr[@]}

#declare -A arr

for (( i = 0; i<=9 ; i++ ))
do
   for (( j = $i; j<=9 ; j++ ))
   do
      if [ ${arr[$i]} -gt ${arr[$j]}  ]; then
           t=${arr[$i]}
           arr[$i]=${arr[$j]}
           arr[$j]=$t
      fi
   done
done

#
# Print the sorted number
#
echo -e "\nSorted Numbers in ascending Order:"
for (( i=0; i<=9; i++ ))
do
  echo ${arr[$i]}
done
echo "second smallest is: " ${arr[1]}
for (( i = 0; i<=9 ; ++i ))
do
   for (( j = $i+1; j<=9 ; ++j ))
   do
      if [ ${arr[$i]} -lt ${arr[$j]} ]; then
           t=${arr[$i]}
           arr[$i]=${arr[$j]}
           arr[$j]=$t
      fi
   done
done

#
# Print the sorted number
#
echo -e "\nSorted Numbers in descending Order:"
for (( i=0; i<=9; i++ ))
do
  echo ${arr[$i]}
done
echo "second largest is: " ${arr[1]}

#result="$( isSort $((${Array[@]})) )" 
#echo ${result[@]}
