#!/bin/bash

OLD_PID=$(ps aux | grep jar | egrep -v "webroot=/var/cache/jenkins/war|grep" | awk '{ print $2 }')
if [ -z $OLD_PID ];then
    echo "ok"
else
    kill $OLD_PID
fi
