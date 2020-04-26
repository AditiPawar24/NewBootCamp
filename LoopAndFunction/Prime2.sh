#!/bin/bash -x
low=1
count=0

while [ $low -eq 1 ]
do
echo "Enter a lower limit: "
read low
done

echo "Enter the upper limit"
read upper

flag=0
i=1
j=2
for (( i=low; i<upper; i++ ))
do
   flag=0;
   for (( j=2; j<$i; j++ ))
   do
      prime=$(( $i%$j ))
   if [ $prime -eq 0 ]
   then
	  flag=1;
   # echo "$num is a prime number"
   else
       print "\num"
    fi
done
if [ $flag -eq 0 ]
then
   echo -e "\n There is prime number." $i%$j
else
    printf "\n"
fi
done 