#!/bin/bash
# for读取命令执行的结果

FILE=`ls /usr/local`
#FILE=$(ls /usr/local)

for i in $FILE
#for i in $(ls /usr/local)
do
    if [ -d /usr/local/$i ];then
	echo "$i is Directory."
    elif [ -f /usr/local/$i ];then
	echo "$i is file."
    else
	echo "Error."
    fi
done

# 设置换行符为分隔符
IFS=$'\n'

for i in $(cat usr.txt)
do
	echo "Now user is $i"
done
