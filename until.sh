#!/bin/bash

#until condition
#do
#	commands
#done

num=10

until [ $num -eq 0 ]
do
	echo "Number now is $num"
	(( num-- ))
done
