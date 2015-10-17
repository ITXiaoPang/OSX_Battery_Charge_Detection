# Battery Charge Detection for OSX



## What can I do?

Detective each 1 mins.

After the battery charging **really completed** then show a notification.



## Installation:

Clone me to anywhere:

`git clone https://github.com/ITXiaoPang/OSX_Battery_Charge_Detection.git`

------

Run the script Initial.sh (**Recommend**)

or

Type the command underside



1.Copy me to the right place

``` shell
cd OSX_Battery_Charge_Detection
cp -a OSX_Battery_Charge_Detection.sh /usr/local/bin/
cp -a ChargeCompleteNotification.app /Applications/
```



2.Let me auto launch after login

``` shell
cp -a com.ITXiaoPang.OSX_Battery_Charge_Detection.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/com.ITXiaoPang.OSX_Battery_Charge_Detection.plist
```



## Enjoy it.