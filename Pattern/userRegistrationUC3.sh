#!/bin/bash -x

echo "Enter Email"
read email
#emailPat="^[0-9a-zA-z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-z]{2}([.][a-zA-z]{2})$"
emailPat="^[a-zA-z][[:alnum:]]*\.?\-?\+?[0-9a-zA-Z]+@[0-9a-zA-Z]+\.[a-zA-z]{2}[a-zA-z]?\.?[a-zA-Z]*$"
if [[  $email =~ $emailPat ]]
then
    echo yes
else
    echo no
fi
