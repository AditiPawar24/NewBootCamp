#!/bin/bash -x

#declare -a numbers

declare -a storeDoubleNum

start=0
end=100

for (( number=start; number<=end; number++ ))
do
    if [[ $number -ge 10 ]]
	then 
	divNumber=$(( ${number}/10 ));
	modNumber=$(( ${number}%10 ));
	
    if [[ $divNumber -eq $modNumber ]]
	then
	     echo "Number" ${number};
		 storeDoubleNum[((count++))]=${number};
	fi
	fi
done;

echo "Double Number=" ${storeDoubleNum[@]};
printf "\n";


