#!/usr/bin/env bash

# This script sets the statusbar with the xsetroot command at the end. Have it
# started by ~/.xinitrc or ~/.xprofile.

# Set the deliminter character.
delim=" | "

# Here is the (big) function that outputs the appearance of the statusbar. It
# can really be broken down into many submodules which I've commented and
# explained.
status() { \

    #volume
    if [[ `pactl list sinks | grep Mute | grep y` ]]; 
    then
        printf " $(pactl list sinks | grep '^[[:space:]]Volume:' | awk '{print $5}')"
    else
        printf " $(pactl list sinks | grep '^[[:space:]]Volume:' | awk '{print $5}')"
    fi

	printf "$delim"

    #ram
    printf " $(free -h | grep Mem | awk '{print $3}')"

	printf "$delim"

    #disk space
    printf " $(df -h | grep "/$" | awk '{print $3 " / " $2}')"

	printf "$delim"

	# Wifi
    printf " $(nmcli -t | grep " connected" | cut -c 22-)"

	printf "$delim"

    #battery
    if [[ `acpi -b | grep Discharging` ]];
    then
        printf "$(acpi -b | awk '{print " " $4}' | tr ',' ' ' | sed 's/[[:blank:]]*$//')"
    elif [[ `acpi -b | grep "Not charging"` ]];
    then
        printf "$(acpi -b | awk '{print " " $5}' | tr ',' ' ' | sed 's/[[:blank:]]*$//')"
    else
        printf "$(acpi -b | awk '{print " " $4}' | tr ',' ' ' | sed 's/[[:blank:]]*$//')"
    fi

    printf "$delim"

	#date and time.
	printf "$(date +" %D  %I:%M %p")"
	}

update() { \
	xsetroot -name "$(status | tr '\n' ' ')" &
    }


while :; do
    update
	# Sleep for a minute after changing the status bar before updating it
	# again. We run sleep in the background and use wait until it finishes,
    # because traps can interrupt wait immediately, but they can't do that
    # with sleep.
	sleep 1m &
    wait
done
