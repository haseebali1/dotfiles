#!/bin/bash

#export XDG_RUNTIME_DIR="/run/user/1000"

#Code:

bat_percent=$(acpi -b | grep "Discharging" | awk ' { print ($4)-0}')
discharging=false;

if [ "$bat_percent" -lt "15" ]  
then 
    /usr/bin/mpg123 -q /home/haseeb/Music/Low-battery-sound.mp3 && notify-send "Battery Low ${bat_percent}" 
    discharging=true
fi

if [ "$discharging" = false ]
then

    bat_percent=$(acpi -b | grep 'Charging\|Not charging' | awk ' { print ($5)-0}')

    if [ "$bat_percent" -eq "100" ]
    then
        /usr/bin/mpg123 /home/haseeb/Music/Low-battery-sound.mp3 && notify-send "Battery Full ${bat_percent}"
    fi
fi

