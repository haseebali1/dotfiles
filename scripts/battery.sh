#!/bin/bash

export XDG_RUNTIME_DIR="/run/user/1000"
#Code:
pactl set-sink-volume 70%
if [ `acpi -b | grep "Discharging" | awk ' { print ($4)-0}'`  -lt "15" ] ; then /usr/bin/mpg123 /home/haseeb/Music/Low-battery-sound.mp3  && notify-send "Battery Low"; fi
if [ `acpi -b | grep 'Charging\|Not charging' | awk ' { print ($5)-0}'`  -eq "100" ] ; then /usr/bin/mpg123 /home/haseeb/Music/Low-battery-sound.mp3  && notify-send "Battery Full"; fi
pactl set-sink-volume 25%
