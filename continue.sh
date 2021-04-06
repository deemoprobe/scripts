#!/bin/bash

for (( i=10;i<=20;i++ ))
do
	if (( i>15 && i<20 ));then
		continue
	else
		echo "$i"
	fi
done
