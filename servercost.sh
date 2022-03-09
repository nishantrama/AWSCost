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
if [ $? > 1 ];
then
  echo "OneAgent Installed Okay"
else
  echo "OneAgent not running, quitting"
  exit 0
fi

#aws ce get-cost-and-usage --time-period Start=2022-03-08,End=2022-03-09 --metrics "BlendedCost" --granularity "DAILY" --group-by Type=DIMENSION,Key=INSTANCE_TYPE

curl --location --request POST 'https://'$DT_HOST'/api/v2/metrics/ingest' \
--header 'Content-Type: text/plain; charset=utf-8' \
--header 'Authorization: Api-Token '$DT_API_TOKEN \
--data-raw 'custom.aws.blendedcost,instancetype= NUMBER 
custom.aws.blendedcost,instancetype= NUMBER '

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
















