#!/bin/bash
# shell中空格/tab/换行等会被解析为分隔符
# 可以是定义IFS的值来自定义分隔符

IFS=":"

list="a b c d:kcanivi:nanf anifni"

for i in $list
do
	echo "Var is $i"
done
