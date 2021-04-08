#!/bin/bash
# @Author: deemoprobe@gmail.com
# @Date:   2021-03-10 13:52:28
# @Last Modified by:   deemoprobe@gmail.com
# @Last Modified time: 2021-03-10 14:22:04
# @Description: Nginx Log Cutting Script

# Nginx Log Path
LOG_PATH=/tpsys/nginx/log

# Nginx PID
NGINX_PID=/tpsys/nginx/run/nginx.pid

# MV Log
mv $LOG_PATH/access.log $LOG_PATH/access-`date +%Y-%m-%d-%H:%M:%S`.log
mv $LOG_PATH/error.log $LOG_PATH/error-`date +%Y-%m-%d-%H:%M:%S`.log

# Reload Nginx Log
kill -USR1 `cat $NGINX_PID`