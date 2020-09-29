#!/bin/bash

step=10

for(( i = 0; i < 60; i=(i+step))); do
chmod 777 /tpsys/application/
sleep $step
done
exit 0

# 之后设置每分钟执行一次脚本
# * * * * * /bin/bash chmod_sec.sh