#!/bin/bash

# case语句

# 涉及到枚举时
# 可以使用case简化类似下面的if判断
#if ((a==1));then
#    commands
#elif ((a==2));then
#    commands
#elif ((a==3));then
#    commands
#else
#    commands
#fi

#case $var in
#    p1)
#	commands
#       ;;
#    p2)
#	commands
#	;;
#    *)
#	commands
#	;;
#esac

	
case $1 in
    a)
	echo a
	;;
    b)
	echo b
	;;
    *)
	echo "Input a | b"
	;;
esac
