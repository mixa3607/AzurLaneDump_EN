IsRun=$1
Files="Android_data/files/"
AppVer=$(cat "APK/ver.txt" | tr -d "\r\n")
CvVer=$(cat "${Files}version-cv.txt")
ScriptsVer=$(cat "${Files}version.txt")
L2dVer=$(cat "${Files}version-live2d.txt")
BuildedVerStr="APP:$AppVer MAIN:$ScriptsVer CV:$CvVer L2D:$L2dVer"
if [ "$IsRun" == "y" ]
then
   echo 'run "git add ."'
   git add .
   git status
   echo 'run "git commit -m "' $BuildedVerStr
   git commit -m "$BuildedVerStr"
else
   echo "$BuildedVerStr"
fi
if [ "$IsRun" == "p" ]
then
    echo "git push to master"
    git push origin master
fi

