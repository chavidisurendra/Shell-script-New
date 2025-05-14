#!/bin/bash

diskusage=$(df -Th | grep xfs)
diskthreshold=75

while IFs= read -r line
do
  usage=$(echo $line |awk -F " " '{print $6F}' | cut -d "%" -f1)
  folder=$(echo $line | awk -F " " '{print $NF}')
  if [ $usage -ge $diskthreshold]
  then
       echo "$folder is more than $diskthreshold,current usage: $usage"
  fi
done <<<$diskusage