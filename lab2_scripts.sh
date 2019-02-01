#!/bin/bash
# Authors : Christopher Thompson
# Date: 1/1/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

# 1) Accept a regular expression & file name from the user with a prompt
echo "Enter a filename: "
read filename
echo "enter a regex: "
read regex


grep -E $regex $filename

#capture all phone numbers (3.1) "-c" counts without it lsits
grep -c -E '\d{3}-\d{3}-\d{4}' regex_practice.txt

#(3.2) capture emails (info is in slides)
 grep -c -E '\b[A-Za-z]+@[A-Za-z]+\.[A-Za-z]+' regex_practice.txt

#(3.3) list all the numbers
grep -E '\d{3}-\d{3}-\d{4}' regex_practice.txt > phone_resuts.txt

#(3.4) list all the emails
 grep -E '\b[A-Za-z]+@[A-Za-z]+\.[A-Za-z]+' regex_practice.txt > email_results.txt



 #(3.5) List all of the lines that match a command-line regular expresion and store the results in "command_results.txt"


grep -E $1 regex_practice.txt > command_results.txt
