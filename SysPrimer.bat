@echo off
REM Initiate Systems
COLOR A

REM Social Media
adb shell pm uninstall --user 0 com.facebook.appmanager
adb shell pm uninstall --user 0 com.facebook.services
adb shell pm uninstall --user 0 com.facebook.system
adb shell pm uninstall --user 0 com.facebook.katana
adb shell pm uninstall --user 0 com.snapchat.android

REM Streaming/Entertainment
adb shell pm uninstall --user 0 com.netflix.mediaclient
adb shell pm uninstall --user 0 com.spotify.music

REM Third-party Apps
adb shell pm uninstall --user 0 com.truecaller
adb shell pm uninstall --user 0 com.phonepe.app
adb shell pm uninstall --user 0 com.microsoft.skydrive
adb shell pm uninstall --user 0 com.opera.max.oem
adb shell pm uninstall --user 0 com.hiya.star
adb shell pm uninstall --user 0 com.mmi.maps
adb shell pm uninstall --user 0 com.factory.mmigroup

REM Samsung Bloat
adb shell pm uninstall --user 0 com.samsung.android.tvplus
adb shell pm uninstall --user 0 com.mygalaxy
adb shell pm uninstall --user 0 com.samsung.eadb 
adb shell pm uninstall --user 0 comm.global.in
adb shell pm uninstall --user 0 com.samsung.android.themestore
adb shell pm uninstall --user 0 com.samsung.android.themecenter
adb shell pm uninstall --user 0 com.samsung.android.stickercenter
adb shell pm uninstall --user 0 com.samsung.android.forest
adb shell pm uninstall --user 0 com.samsung.android.app.spage
adb shell pm uninstall --user 0 com.samsung.discover
adb shell pm uninstall --user 0 com.samsung.discover.sep
adb shell pm uninstall --user 0 com.aura.oobe.samsung
adb shell pm uninstall --user 0 com.samsung.android.kidsinstaller
adb shell pm uninstall --user 0 com.sec.android.app.kidshome
adb shell pm uninstall --user 0 com.samsung.android.app.parentalcare
adb shell pm uninstall --user 0 com.samsung.android.game.gos
adb shell pm uninstall --user 0 com.samsung.android.game.gamehome
adb shell pm uninstall --user 0 com.sec.android.app.shealth
adb shell pm uninstall --user 0 com.samsung.android.app.watchmanager
adb shell pm uninstall --user 0 com.sec.android.app.fm
adb shell pm uninstall --user 0 com.samsung.android.voc
adb shell pm uninstall --user 0 com.sec.android.gallery3d
adb shell pm uninstall --user 0 com.samsung.sree
adb shell pm uninstall --user 0 com.samsung.ecomm.global.in
adb shell pm uninstall --user 0 com.samsung.android.spaymini
adb shell pm uninstall --user 0 com.samsung.android.smartswitchassistant
adb shell pm uninstall --user 0 com.sec.android.easyMover
adb shell pm uninstall --user 0 com.sec.android.easyMover.Agent
adb shell pm uninstall --user 0 com.samsung.android.app.clockpack
adb shell pm uninstall --user 0 com.sec.android.app.clockpackage
adb shell pm uninstall --user 0 com.sec.android.app.samsungapps
adb shell pm uninstall --user 0 com.samsung.android.scloud

REM Redundant Apps - Apps Replaced by Google
adb shell pm uninstall --user 0 com.sec.android.app.popupcalculator
adb shell pm uninstall --user 0 com.samsung.android.calendar
adb shell pm uninstall --user 0 com.samsung.android.app.notes
adb shell pm uninstall --user 0 com.samsung.android.messaging
adb shell pm uninstall --user 0 com.sec.android.app.voicenote
adb shell pm uninstall --user 0 com.samsung.storyservice

echo Cleanup Complete. Exiting with Code 0.
pause