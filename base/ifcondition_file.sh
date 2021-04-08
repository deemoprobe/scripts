#!/bin/bash

# if condition
# 文件比较
# 代码
# -e file 是否存在该文件
# -d file 是否为目录
# -f file 是否为文件
# -r file 是否可读
# -w file 是否可写
# -x file 是否可执行
# -s file 是否存在且不为空

TMP="/tmp"
# 获取权限代码
# tr -s '\n' 过滤输出的空行
#ACCESS=`stat /tmp | grep Access | awk -F"/" '{print $1}' | awk -F"(" '{print $2}' | tr -s '\n'`
ACCESS=`stat /tmp | grep Access | awk -F")" '{print $1}' | awk -F"(" '{print $2}' | tr -s '\n'`

if [ -e $TMP ];then
  if [ -d $TMP ];then
    echo "根目录下tmp存在且为目录,权限代码:$ACCESS"
  elif [ -f $TMP ];then
    echo "根目录下tmp存在且为文件,权限代码:$ACCESS"
  fi
else
    echo "根目录下tmp不存在"
fi

