Device="$1"
rm -rf Android_data/files
adb -s "$Device" pull /sdcard/Android/data/com.YoStarEN.AzurLane/files Android_data/
adb -s "$Device" shell dumpsys package com.YoStarEN.AzurLane | grep versionName | sed 's|.*versionName=||1' > APK/ver.txt