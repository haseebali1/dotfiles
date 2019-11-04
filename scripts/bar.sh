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

memory() {
    free -h | grep Mem | awk '{print $3}'
}

while :;
do 
    xsetroot - name "Volume $(volume) $delim $(memory) $delim $(disk) $delim $(wifi) $delim $(battery) $delim $(times)"
    sleep 1m
done
