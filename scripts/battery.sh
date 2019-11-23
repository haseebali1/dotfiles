#!/bin/bash

export XDG_RUNTIME_DIR="/run/user/1000"
#export DISPLAY=:0.0

#Code:

bat_percent=$(acpi -b | grep "Discharging" | awk ' { print ($4)-0}')

if [ "$bat_percent" -lt "15" ]  
then 
    /usr/bin/mpg123 -q /home/haseeb/Music/Low-battery-sound.mp3 && notify-send "Battery Low ${bat_percent}" 
fi

bat_percent=$(acpi -b | grep 'Charging\|Not charging' | awk ' { print ($NF)-0}')

if [ "$bat_percent" -eq "100" ]
then
    /usr/bin/mpg123 -q /home/haseeb/Music/Low-battery-sound.mp3 && notify-send "Battery Full ${bat_percent}"
fi
