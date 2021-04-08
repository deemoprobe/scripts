#!/bin/bash

# if-else语法
# if command | condition
# then
#    commands
# else
#    commands
# fi
# &> /dev/null 命令输出结果重定向到/dev/null文件,不在终端输出
if ps -ef | grep mysqld | grep -v grep &> /dev/null
then
	echo "Mysql found."
else
	echo "Mysql not found."
fi
