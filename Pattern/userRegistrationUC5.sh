#!/bin/bash -x

echo "Enter password: "
read password
psswd="[(0-9a-zA-Z)+(\.\@#$%!_""\^|&*-.\?)+]{8,}$"
#psswd="^[A-Z0-9]{8}$"            //rule 1 2 3
if [[ $password =~ $psswd ]]
then
     echo valid
else
     echo invalid
fi
