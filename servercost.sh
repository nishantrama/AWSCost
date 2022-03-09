#!/usr/bin/env bash

#Query Cost of Insta

aws --version | grep 'aws-cli/' &> /dev/null
if [ $? == 1 ];
then
  echo "AWS Host Okay"
else
  echo "Not an AWS Host"
  exit 0
fi


ps -ef | grep 'oneagentwatchdog' &> /dev/null
echo $?
if [ $? == 1 ];
then
  echo "OneAgent Installed Okay"
else
  echo "OneAgent not running, quitting"
  exit 0
fi

#check if OneAgent is running

#if [ command -v systemctl >/dev/null ]
#then
#    systemctl service start
#else
#    /etc/init.d/service start
#fi

#ccIf OneAgent Running

  #Send to MINT Command-lin

#If OA not running

  #Send via Public API














