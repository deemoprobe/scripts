#!/bin/bash

# 环境变量
# 对所有用户都生效 /etc/profile
# 当前用户生效 ~/.bashrc    ~/.bash_profile
# 临时环境变量 export
# 常用系统环境变量

echo "命令路径(PATH):$PATH"
echo "当前用户家目录(HOME):$HOME"
echo "用户登录名(LOGNAME):$LOGNAME"
echo "当前路径(PWD):$PWD"
echo "历史命令的保存文件(HISTFILE):$HISTFILE"
echo "历史命令保存的最大行数(HISTSIZE):$HISTSIZE"
echo "主机名(HOSTNAME):$HOSTNAME"
echo "当前SHELL:$SHELL"
echo "一级命令提示符($PS1):$PS1"
echo "用户和系统交互的超时时间(TIMEOUT):$TIMEOUT"
echo "系统默认输入分隔符(IFS):$IFS前面是符号"
echo "系统默认输出分隔符(OFS):$OFS前面是符号"
