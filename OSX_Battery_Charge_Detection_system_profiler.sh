#!/bin/bash
while true
do
  pmset -g ps|grep InternalBattery|awk '{print $2}'
  info=$(system_profiler SPPowerDataType|grep -E "Charge Remaining|Full Charge Capacity")
  remaining=$(echo $info|awk '{print $4}')
  full=$(echo $info|awk '{print $9}')
  percent=$(echo "scale=0;$remaining*100/$full"|bc)
  echo $remaining/$full=$percent%
  if [ "$percent" -gt "95" ]
  then
    echo Call Notification
    open /Applications/ChargeCompleteNotification.app
  fi
  sleep 5
done
