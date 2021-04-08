#!/bin/bash

for (( i=0;i<10;i++ ))
do
	echo "Number is $i"
done | grep 9 > result.txt
#done > result.txt
#执行结果会输出到指定文件中,可以过滤后再输出到文件
