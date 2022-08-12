#!/bin/bash
echo "Enter password: "
read pass
c=`echo ${#pass}`
if [ $c -lt 8 ]; then
echo "Password must be of atleast 8 characters!"
exit 1
fi
#echo "$pass"
echo $pass | grep "[a-z]" | grep "[A-Z]" | grep "[0-9]" | grep "[@#$%^&*]"
if [ $? -ne 0 ]; then
echo "Weak Password"
exit 2
fi
echo "Strong Password"
