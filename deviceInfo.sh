Device="$1"
adb devices
if [ "$Device" != "" ]
then
echo -n "info about $Device: "
adb -s "$Device" shell getprop "ro.build.description"
fi
