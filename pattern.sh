#!/bin/bash -x

echo "Welcome to User Registration Problem"

#UC-1 validating First Name

pattern="^[[:upper:]]{1,}[[:lower:]]{2,}$"
read -p "Enter first_name to check " FirstName
if [[ $FirstName =~ $pattern ]]
then
   echo "First is Correct"
else
   echo "FirstName is Incorrect"
fi


#UC-2 validating Last Name

pattern="^[[:upper:]]{1,}[[:lower:]]{2,}$"
read -p "Enter Last_name to check " LastName
if [[ $LastName =~ $pattern ]]
then
   echo "LastName is Correct"
else
   echo "LastName is Incorrect"
fi

#UC-3 validating Email

pattern1="^[a-zA-Z0-9]{3,15}(|[.|_|%|+|-]?[a-zA-Z0-9]+)@[a-zA-Z0-9]{1,15}(.[a-z]{2,4})(|[.]?[a-z]{2,4})$"
read -p "Enter Email to check " email
if [[ $email =~ $pattern1 ]]
then
   echo "Email is Correct"
else
   echo "Email is Incorrect"
fi

#UC-4 validating Mobile no

pattern2="^[0-9]{2}[' ']{0,1}[0-9]{10}$"
read -p "Enter Mobile no to check " mobile_no
if [[ $mobile_no =~ $pattern2 ]]
then
   echo " Mobile no is Correct "
else
   echo "Mobile no is Wrong "
fi


#UC-5 validating password

read -p "Enter Password to check " password
pattern=$(($(tr -d '[[:alnum:]]' <<< $password | wc -m)-1))

if [[ ${#password} -ge 8 && $password==*[[:upper:]]* && $password == *[0-9]*  ]]
then
    echo "Valid"
else
    echo "Invalid"
fi