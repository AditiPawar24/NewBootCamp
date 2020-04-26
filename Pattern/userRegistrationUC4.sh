#!/bin/bash -x

echo "Enter mobile number: "
read number
mobileNo="^[0-9_ ]{13}$"
#mobileNo="[0-9]{1}[][0-9]{10}$"
if [[ $number =~ $mobileNo ]]
then
     echo valid
else
     echo invalid
fi
