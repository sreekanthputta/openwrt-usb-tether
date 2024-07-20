adb wait-for-device
adb shell input keyevent 82 # screen on
adb shell input keyevent 82 # unlock
adb shell am start -n com.android.settings/.TetherSettings # open tether settings
adb shell input keyevent 20 # go down
adb shell input keyevent 20 #go down
adb shell input keyevent KEYCODE_ENTER # click
time adb exec-out screencap -p > test.png && catimg -r 2 test.png && rm test.png #take a screenshot and print
sleep 2 
adb shell input keyevent 4 # go back
adb shell input keyevent 26 # lock screen
