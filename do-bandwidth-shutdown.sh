#!/bin/bash
ax=`vnstat --oneline | awk -F ";" '{print $11}'`
if [[ "$ax" == *GiB* ]];
then
if [ $(echo "$(echo "$ax" | sed 's/ GiB//g') > 999"|bc) -eq 1 ]
then
shutdown -h now
fi
fi 