#echo $1
Device="$1"
GitPath="Android_data/files/"
AndroidPath="/sdcard/Android/data/com.YoStarEN.AzurLane/files/"
echo "Git apk: $(cat APK/ver.txt)"
echo "Rem apk: $(adb -s "$Device" shell dumpsys package com.YoStarEN.AzurLane | grep versionName | sed 's|.*versionName=||1' | tr -d "\r\n")"
echo "=========================="

echo "Git version: $(cat ${GitPath}version.txt)"
echo "Rem version: $(adb -s "$Device" shell cat ${AndroidPath}version.txt)"
echo "=========================="

echo "Git cv: $(cat ${GitPath}version-cv.txt)"
echo "Rem cv: $(adb -s "$Device" shell cat ${AndroidPath}version-cv.txt)"
echo "=========================="

echo "Git live2d: $(cat ${GitPath}version-live2d.txt)"
echo "Rem live2d: $(adb -s "$Device" shell cat ${AndroidPath}version-live2d.txt)"
echo "=========================="
