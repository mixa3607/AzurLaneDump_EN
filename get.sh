Device="$1"
rm -rf Android_data/files
adb -s "$Device" pull /sdcard/Android/data/com.YoStarEN.AzurLane/files Android_data/

