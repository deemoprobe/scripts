#!/bin/bash
# @Author: deemoprobe@gmail.com
# @Date:   2021-03-08 14:39:29
# @Last Modified by:   deemoprobe@gmail.com
# @Last Modified time: 2021-03-09 14:41:11
# @Description: Weblogic LogCutting Script and Clear Rules
####################### 后续操作 ########################
# 由于echo > appserver1.out时appserver1.out一直在刷新日志
# Null字符会在appserver1.out头部随着日志刷新生成
# Null字符过多会导致appserver1.out文件被识别为二进制文件
# 造成日志文件无法读取并且ls -al查看文件大小发现并没有切割过去
# 虽然实际上已经切割了, 此时需要把受管启动脚本里的>改为>>
# sed -i s/">"/">>"/g startappserver1.sh, 重启受管服务即可
#########################################################

export DEPLOY_DIR=/tpsys/applications/proddomain/logs

ps -ef | grep java | grep weblogic | grep appserver1
if [ $? = 0 ]
then
        cp ${DEPLOY_DIR}/appserver1.out ${DEPLOY_DIR}/appserver1-`date +%Y-%m-%d-%H:%M:%S`.out
        echo  > ${DEPLOY_DIR}/appserver1.out
        cp ${DEPLOY_DIR}/appserver1.err ${DEPLOY_DIR}/appserver1-`date +%Y-%m-%d-%H:%M:%S`.err
        echo  > ${DEPLOY_DIR}/appserver1.err
fi

ps -ef | grep java | grep weblogic | grep appserver2
if [ $? = 0 ]
then
        cp ${DEPLOY_DIR}/appserver2.out ${DEPLOY_DIR}/appserver2-`date +%Y-%m-%d-%H:%M:%S`.out
        echo  > ${DEPLOY_DIR}/appserver2.out
        cp ${DEPLOY_DIR}/appserver2.err ${DEPLOY_DIR}/appserver2-`date +%Y-%m-%d-%H:%M:%S`.err
        echo  > ${DEPLOY_DIR}/appserver2.err
fi

ps -ef | grep java | grep weblogic | grep appserver3
if [ $? = 0 ]
then
        cp ${DEPLOY_DIR}/appserver3.out ${DEPLOY_DIR}/appserver3-`date +%Y-%m-%d-%H:%M:%S`.out
        echo  > ${DEPLOY_DIR}/appserver3.out
        cp ${DEPLOY_DIR}/appserver3.err ${DEPLOY_DIR}/appserver3-`date +%Y-%m-%d-%H:%M:%S`.err
        echo  > ${DEPLOY_DIR}/appserver3.err
fi

ps -ef | grep java | grep weblogic | grep appserver4
if [ $? = 0 ]
then
        cp ${DEPLOY_DIR}/appserver4.out ${DEPLOY_DIR}/appserver4-`date +%Y-%m-%d-%H:%M:%S`.out
        echo  > ${DEPLOY_DIR}/appserver4.out
        cp ${DEPLOY_DIR}/appserver4.err ${DEPLOY_DIR}/appserver4-`date +%Y-%m-%d-%H:%M:%S`.err
        echo  > ${DEPLOY_DIR}/appserver4.err
fi

ps -ef | grep java | grep weblogic | grep appserver5
if [ $? = 0 ]
then
        cp ${DEPLOY_DIR}/appserver5.out ${DEPLOY_DIR}/appserver5-`date +%Y-%m-%d-%H:%M:%S`.out
        echo  > ${DEPLOY_DIR}/appserver5.out
        cp ${DEPLOY_DIR}/appserver5.err ${DEPLOY_DIR}/appserver5-`date +%Y-%m-%d-%H:%M:%S`.err
        echo  > ${DEPLOY_DIR}/appserver5.err
fi

ps -ef | grep java | grep weblogic | grep appserver6
if [ $? = 0 ]
then
        cp ${DEPLOY_DIR}/appserver6.out ${DEPLOY_DIR}/appserver6-`date +%Y-%m-%d-%H:%M:%S`.out
        echo  > ${DEPLOY_DIR}/appserver6.out
        cp ${DEPLOY_DIR}/appserver6.err ${DEPLOY_DIR}/appserver6-`date +%Y-%m-%d-%H:%M:%S`.err
        echo  > ${DEPLOY_DIR}/appserver6.err
fi

# Clear Logs
find ${DEPLOY_DIR}/ -name "appserver*" -mtime +30 -exec rm -rf {} \;

# gzip
#find ${DEPLOY_DIR}/ -name "appserver*" ! -name "*.gz" -mtime +5 -exec gzip {} \;