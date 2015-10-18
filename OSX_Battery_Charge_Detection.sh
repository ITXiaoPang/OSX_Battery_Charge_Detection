#!/bin/bash
last_remaining=-1
while true
do
  info=$(system_profiler SPPowerDataType|grep -E "Charge Remaining|Full Charge Capacity|Connected")
  remaining=$(echo $info|awk '{print $4}')
  full=$(echo $info|awk '{print $9}')
  Charging=$(echo $info|awk '{print $11}')

  # Show percent
  percent=$(echo "scale=0;$remaining*100/$full"|bc)
  echo $remaining/$full=$percent%

  if [ "$Charging" = "Yes" ]
  then
    if [ "$remaining" = "$last_remaining" ] || [ "$remaining" = "$full" ]
    then
      echo Charging complete.
      open /Applications/ChargeCompleteNotification.app
    else
      last_remaining=$remaining
    fi
  else
    last_remaining=-1
    if [ "$percent" -lt 20 ]
    then
      echo Suggest charge now.
      open /Applications/SuggestChargeNotification.app
    fi
  fi
  sleep 60
done
