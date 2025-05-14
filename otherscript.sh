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

files=$( find $sourcedirectory -name "*.log" -mtime +14)

while IFS=read -r line
do
  echo"deleting the files: $line"
  rm -rf $line
done <<< $files