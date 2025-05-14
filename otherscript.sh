#!/bin/bash
#set -e  #it will exit automatically when error comes

#trap 'function ${lineno} "$BASH_COMAND"' ERR

sourcedirectory=/tmp/app-logs

if [ -d $sourcedirectory]
then
    echo "source directory exists"
else
   echo" please make sure $sourcedirectory exist"
fi
