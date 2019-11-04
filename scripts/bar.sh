#!/bin/bash

delim=" < | > "

battery() {
    battery_info=$(acpi)

    if [[ `echo "$battery_info" | grep Discharging` ]];
    then
        battery=$(echo "Discharging: $(echo "${battery_info}" | awk '{print $4}' | cut -d "," -f1)")
    else
        battery=$(echo "Charging: $(echo "${battery_info}" | awk '{print $4}' | cut -d "," -f1)")

    fi
    echo $battery
}

times() {
    echo $(date +"%D %H:%M %p")
}

volume() {
    pactl list sinks | grep '^[[:space:]]Volume:' | awk '{print $5}'
}

disk() {
    df -h | grep "/$" | awk '{print $3 " / " $2 }'
}

wifi() {
    nmcli -t | grep " connected" | cut -c 22-
}


echo "$(battery) $delim $(times) $delim $(volume) $delim  $(disk) $delim $(wifi)"
#while : 
#do 
#    echo `pactl list sinks | grep "Volume: f" | cut -d " " -f6` `date +"%a, %b %d, %y | %I:%M %p"` || exit 1
#    sleep 1m
#done
