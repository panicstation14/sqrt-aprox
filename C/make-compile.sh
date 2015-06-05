#!/bin/sh
# Author: Manoel Vilela
#
# This script compile all the files .c to a object-code and after link in a executable file work.out  
#

#function to compile
compile(){
	for file in ./*.c
	do
		gcc -c $file
	done
}

link (){
	gcc ./*.o -lm -o work.out
}

#execution compile

compile

if [ $? -eq 0 ];
then
	echo 'Compiled with success!'
	link
else
	echo 'Failure in compilation!'
fi
