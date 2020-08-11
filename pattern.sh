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