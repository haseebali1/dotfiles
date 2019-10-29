#!/usr/bin/env bash

# script to mount drives and usb

tomount=$(lsblk -lp | grep "part $" | awk '{print $1 " ( " $4 " )"}' | dmenu -i -p "Which drive to mount: " | awk '{ print $1}')

if [ -z "$tomount" ];
then
    exit 0
else
    mountpoint=$(find /mnt -type d -maxdepth 1 2> /dev/null | dmenu -i -p "Where to mount the drive: " | awk '{print $1}')
    if [ -z "$mountpoint" ];
    then
        exit 0
    else
        if [ ! -d "$mountpoint" ];
        then
            mkdir "$mountpoint"
            sudo mount $tomount $mountpoint
        else
            sudo mount $tomount $mountpoint
        fi
    fi
fi
