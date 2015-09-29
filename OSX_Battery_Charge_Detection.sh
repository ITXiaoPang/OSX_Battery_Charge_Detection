#!/bin/bash
# Detect whether the charge has been completed.
while True
do
  info=$(pmset -g ps)
  drawing_from=$(echo $info|awk '{print $4 $5}')
  if [ "$drawing_from" == "'ACPower'" ]
  then
    battery_percent=$(echo $info|awk '{print $7}')
    if [ "$battery_percent" == "100%;" ]
    then
      echo sleep
      sleep 1800
      open /Applications/ChargeCompleteNotification.app
    fi
  fi
  sleep 300
done
