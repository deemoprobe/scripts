#!/bin/bash

#while condition
#do
#	commands
#done

num=10

while [ $num -lt 30 ]
#while (( num<30 ))
do
	echo "Number now is $num"
	(( num++ ))
done
