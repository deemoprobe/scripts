#!/bin/bash
# @Author: deemoprobe@gmail.com
# @Date:   2021-03-08 14:39:29
# @Last Modified by:   deemoprobe@gmail.com
# @Last Modified time: 2021-03-08 14:43:35
# @Description: Weblogic LogCutting Script and Clear Rules

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