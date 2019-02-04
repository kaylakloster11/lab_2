#!/bin/bash
# Authors : Kayla Kloster
# Date: 2/1/2019


#Problem 1 Code:

echo "Enter Expression: "
read expr1
echo "Enter File: "
read file 

grep $expr1 $file

echo "# of Phone numbers: "
grep -c '[0-9]\{3\}[ -]\?[0-9]\{3\}[ -]\?[0-9]\{4\}' $file

echo "# of emails: "
grep -c -E @ $file

#storing all number starting with 303- into new file
echo "Storing number with 303- in phone_results file: "
grep '303[ -]\?[0-9]\{3\}[ -]\?[0-9]\{4\}' $file > phone_results.txt

echo "Storing all emails from geocities in email_results: "
grep '@geocities.com' $file > email_results.txt


#storing all lines matching command-line expressions into a new file 
echo "Storing all lines matching command-line expressions to command_results file."
grep $1 $file > command_results.txt 


