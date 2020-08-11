#!/bin/bash -x
echo "Welcome to User Registration Problem"

#UC-1 validating First Name

pattern="^[[:upper:]]{1,}[[:lower:]]{2,}$"
read -p "Enter first_name to check " num
if [[ $num =~ $pattern ]]
then
   echo "Correct"
else
   echo "Wrong"
fi

#UC-2 validating Last Name

#UC-3 validating Email

pattern1="^[a-zA-Z0-9]{3,15}(|[.|_|%|+|-]?[a-zA-Z0-9]+)@[a-zA-Z0-9]{1,15}(.[a-z]{2,4})(|[.]?[a-z]{2,4})$"
read -p "Enter Email to check " num1
if [[ $num1 =~ $pattern1 ]]
then
   echo "Correct"
else
   echo "Wrong"
fi


#UC-4 validating Mobile no
pattern2="^[0-9]{2}[' ']{0,1}[0-9]{10}$"
read -p "Enter Mobile no to check " num2
if [[ $num2 =~ $pattern2 ]]
then
   echo "Correct"
else
   echo "Wrong"
fi


#UC-5 password: minimum 8 char

read -p "Enter Password to check " password
pattern=$(($(tr -d '[[:alnum:]]' <<< $password | wc -m)-1))

if [[ ${#password} -ge 8 && $password==*[[:upper:]]* && $password == *[0-9]* && $pattern -eq 1 ]]
then
    echo "Valid"
else
    echo "Invalid"
fi



 