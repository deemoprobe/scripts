#!/bin/bash

index=1

for user in `cat /etc/passwd | awk -F":" '{print $1}'`
do
	echo "The $index user is $user"
	index=$(($index+1))
done > users_local_sys.txt
