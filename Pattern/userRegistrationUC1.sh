#!/bin/bash -x

echo "Enter Frist Name"
read Name
NamePat="^[A-Z][a-z A-Z]{2}"
if [[ $Name =~ $NamePat ]]
then
    echo yes
else
    echo no
fi
