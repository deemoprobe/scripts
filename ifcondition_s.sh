#!/bin/bash

# if condition1 condition2
# && 
# ||

TMP="/tmp"
STAT=`stat /tmp`

if [ -e $TMP ] && [ -d $TMP ];then
    echo "$TMP存在且为目录"
elif [ -e $TMP ] && [ -f $TMP ];then
   echo "$TMP存在且为文件"
else
   echo "$TMP详情为$STAT"
fi

