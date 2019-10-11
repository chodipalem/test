#!/bin/bash      
#title           :
#description     :
#author		     :Mithun Reddy L
#date            :08112012
#version         :1.0    
#usage		     :


#Number of arguments on the command line.
echo '$#:' $#
#Process number of the current process.
echo '$$:' $$
#Display the 3rd argument on the command line, from left to right.
echo '$3:' $3
#Display the name of the current shell or program.
echo '$0:' $0
#Display all the arguments on the command line using * symbol.
echo '$*:' $*
#Display all the arguments on the command line using @ symbol.
echo '$@:' $@
date
echo '$?:' $?



if (( $# == 3 ))
then
 echo "you have passed the $# args"
else
   echo "Pass atleast 3 command line args along with script"
fi
