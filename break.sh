#!/bin/bash

for (( i=1;i<=10;i++ ))
do
    echo "$i"

    if (( i==5 ));then
	break
    fi
done

# 跳出多层循环
for (( i=1;i<=5;i++ ))
do
	for (( j=1;j<=3;j++ ))
	do
		echo "$i  $j"
		if (( j==2 ));then
			# 跳出两层循环,默认是1
			break 2
		fi
	done
done
