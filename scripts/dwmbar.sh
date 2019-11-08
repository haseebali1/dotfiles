#!/usr/bin/env sh

# This script sets the statusbar with the xsetroot command at the end. Have it
# started by ~/.xinitrc or ~/.xprofile.

# Handle SIGTRAP signals sent by refbar to update the status bar immediately.
trap 'update' 5

# Set the deliminter character.
delim=" | "

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

	# wifi
    printf " $(nmcli -t | grep " connected" | cut -c 22-)"

	printf "$delim"

    #battery
    if [[ `acpi -b | grep Discharging` ]];
    then
        printf "$(acpi -b | awk '{print " " $4}' | tr ',' ' ' | sed 's/[[:blank:]]*$//')"
    else
        printf "$(acpi -b | awk '{print " " $4}' | tr ',' ' ' | sed 's/[[:blank:]]*$//')"
    fi

    printf "$delim"

	#date and time.
	printf "$(date +" %D  %I:%M %p")"
	}

update() { \
	xsetroot -name "$(status | tr '\n' ' ')" &
    wait

    }


while :; do
    update
	# Sleep for a minute after changing the status bar before updating it
	# again. We run sleep in the background and use wait until it finishes,
    # because traps can interrupt wait immediately, but they can't do that
    # with sleep.
	sleep 1m 
    wait
done
