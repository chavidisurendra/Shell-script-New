#!/bin/bash
echo "allvariables : $@"
echo " number of variables passed : $#"
echo "script name : $0"
echo "current wd : $PWD"
echo "Home Directory of current user: $HOME"
echo "which user is running: $USER"
echo "hostname: $HOSTNAME"
echo "process id of current shell script: $$"
echo "process id of last background command: $!"
sleep 60 &