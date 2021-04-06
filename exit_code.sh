#!/bin/bash

# 退出状态码
# 范围 0~255
# $?状态码值 0-命令执行成功 1-一般性未知错误 2-不适合SHELL的命令 126-命令不可执行 
# 127-没找到命令 128-无效的退出参数 128+x-于Linux信号x相关的严重错误
# 130-Ctrl+C终止的命令 255-正常范围之外的退出码

# exit 数值 设置退出状态码

ps -ef | grep nginx
if [ $? -eq 0 ]
then
  echo "nginx正在运行."
  exit 111
else
  echo "nginx未运行."
  exit 000
fi
