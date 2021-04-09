#!/bin/bash
# @Author: deemoprobe@gmail.com
# @Date:   2021-03-08 14:39:29
# @Last Modified by:   deemoprobe@gmail.com
# @Last Modified time: 2021-04-09 11:04:11
# @Description: Weblogic LogCutting Script and Clear Rules
####################### 后续操作 ########################
# 由于echo > appserver*.out时appserver*.out一直在刷新日志
# Null字符会在appserver*.out头部随着日志刷新生成
# Null字符过多会导致appserver*.out文件被识别为二进制文件
# 造成日志文件无法读取并且ls -al查看文件大小发现并没有切割过去
# 虽然实际上已经切割了, 此时需要把受管启动脚本里的">"改为">>"
# sed -i s/">"/">>"/g startappserver*.sh, 重启受管服务即可
#########################################################

export LOGS_DIR=/app/applications/proddomain/logs

# 遍历6个appserver
for i in {1..6}
do
    ps -ef | grep java | grep weblogic | grep appserver$i &> /dev/null

    if [ $? = 0 ]
    then
        cp ${LOGS_DIR}/appserver$i.out ${LOGS_DIR}/appserver$i-`date +%Y-%m-%d-%H:%M:%S`.out
        echo  > ${LOGS_DIR}/appserver$i.out
        cp ${LOGS_DIR}/appserver$i.err ${LOGS_DIR}/appserver$i-`date +%Y-%m-%d-%H:%M:%S`.err
        echo  > ${LOGS_DIR}/appserver$i.err
    fi
    
done

# Clear Logs
find ${LOGS_DIR}/ -name "appserver*" -mtime +30 -exec rm -rf {} \;

# gzip
#find ${LOGS_DIR}/ -name "appserver*" ! -name "*.gz" -mtime +5 -exec gzip {} \;