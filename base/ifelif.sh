#!/bin/bash

# if嵌套语法
# if command | condition
# then
#    commands
# elif command | condition
# then
#    commands
# else
#    commands
# fi

if ps -ef | grep mysqld | grep -v grep &> /dev/null
then
	echo "Mysql found."
elif ps -ef | grep nginx | grep -v grep &> /dev/null
then
	echo "Nginx found."
else
	echo "Null."
fi
