#! /bin/bash

# writing statements
#echo Hello world
# or
#echo "Hello world"

# variable

#built in variable

#echo bash variable $BASH
#echo bash version $BASH_VERSION
#echo home $HOME
#echo pwd $PWD

#built in variable

#name=Hassen #assigning string to variable 
#echo hi my name is $name

#10val=10 #error this wont work cuz variable names cannot start with numbers only letters
#val=10 #this works!!
#echo $val
#VALUE=20 #this works too
#echo $VALUE #this works too , dont forget the $


#getting user input with "read" command

#echo "Enter name:"
#read name #whatever user inputs gets stored to name
#echo name is $name

#user input with read without input
#echo "Enter name: "
#read #when using read with variable there is a built in variabe named 'REPLY'
#echo $REPLY #built in variable

#multiple input
#echo Enter names
#read name1 name2 name3
#echo $name1, $name2, $name3

#same line input with -p flag
#read -p 'username: ' user_var
#echo $user_var

#same line input (-p) with silent (-s) to cover up
#read -p 'username: ' user_v
#read -sp 'password:'  pass
#echo
#echo $user_v
#echo $pass

#flag array -a
#echo "Enter names: "
#read -a names # -a flag is basically an array 
#echo "Names: ${names[0]}, ${names[1]}" #to access the values just use subscript notiation 


#PASS ARGUMENTS TO BASH 
#echo $1 $2 $3 '> echo $1 $2 $3' #passing three arguments and how to pass is by first running script then inputting variable ./hello.sh <var> <var> <var>

#PASSING ARGS INTO ARRAY
#args=("$@")

#echo ${args[0]} ${args[1]} ${args[2]}

#PRINT ALL ARGS
#echo $@

#PRINT THE NUMBER OF ARGS
#echo $#


#IF STATEMENT 
#if [ condition ]
#then
# statement
#fi

#INTEGER COMPARISON
#-eq - is equal to - if [ "$a" -eq "$b" ]
#-ne - is not equal to - if [ "$a" -ne "$b" ]
#-gt - is greater than  - if [ "$a" -gt "$b" ]
#-ge - is greater than or equal to - if [ "$a" -ge "$b" ]
#-lt - is less than  - if [ "$a" -lt "$b" ]
#-le - is less than or equal to - if [ "$a" -le "$b" ]
#< - is is less than - (("$a" < "$b"))
#<= - is is less than or equal to - (("$a" <= "$b"))
#> - is is greater than - (("$a" > "$b"))
#>= - is is greater than or equal to - (("$a" >= "$b"))

#STRING COMPARISON
#= - is equal to - if [ "$a" = "$b" ] 
#== - is equal to - if [ "$a" == "$b" ]
#!= - is not equal to - if [ "$a" != "$b" ]
#< - is less than, in ASCII alphabetical order - if [[ "$a" < "$b" ]]
#> - is greater than, in ASCII alphabetical order - if [[ "$a" > "$b" ]]
#-z - string is null, that is, has zero length

#IF STATEMENT
#count=10
#if [ $count -eq 10 ]
#then
# echo "condition is true"
#else
# echo "condition is false"
#fi

#ElSE IF STATMENT
#if [ $count -eq 10 ]
#then
# echo "condition is true"
#elif [ $count -ne 3 ]
#then
# echo "some condition here"
#else
# echo "condition is false"
#fi

#FILE TEST OPERATORS 
#echo -e "enter the name of the file: \c" #\c keeps the cursor on the same line but in order for \c to work you need the flag -e
#read file_name

## -e flag in this case means if the file exist or not, 
## -f flag is for if file_name var is a file or not ex. if [ -f $file_name ]
## -d flag checks for if directory exist or not
## there are two types of files, 
	## block special file type - a binary file such as picture or video file or music etc
	## -b for block special file
	## character special file type - normal file which contains some text or data
       	## -c for character special file type

## -s checks whether a file is empty or not
## -r to check if file has read permission
## -w to check if file has write permssion

#if [ -f $file_name ] # then
# echo "$file_name found"
#else
# echo "$file_name not found"
#fi


## APPEND OUTPUT TO THE END OF FILEi
#echo -e "Enter the name of the file: \c"
#read file_name

#if [ -f $file_name ]
#then
# 	if [ -w $file_name ]
# 	then
	 
#  	 echo "type some text data too quit press control+d"
#	 cat >> $file_name  ## to append to file must use >> 
	 ## to override a file must use >
# 	else
#	 echo "the file do not hae write permission "
# 	fi
#else
# echo "$file_name does not exists"
#fi

## LOGICAL AND OPERATOR
age=50
if [ "$age" -gt 18 ] && [ "$age" -lt 30 ]
# you can also do this as well if [ "$age" -gt 18 && "$age" -lt 30 ] 
then
 echo "valid age"
else 
 echo "age not valid"
fi
