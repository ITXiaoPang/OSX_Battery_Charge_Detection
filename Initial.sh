#!/bin/bash
cp -a OSX_Battery_Charge_Detection.sh /usr/local/bin/
cp -a ChargeCompleteNotification.app /Applications/
cp -a SuggestChargeNotification.app /Applications/
cp -a com.ITXiaoPang.OSX_Battery_Charge_Detection.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/com.ITXiaoPang.OSX_Battery_Charge_Detection.plist
