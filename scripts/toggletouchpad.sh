#!/bin/bash

id=$(xinput | grep TouchPad | grep -E -o "id=[[:digit:]]+" | grep -E -o "[[:digit:]]+")

if [ "$id" = "" ]
then
    echo "no touchpad found."
    exit 0
fi

status=$(xinput list-props $id | grep "Device Enabled" | cut -f3)

if [ $status -eq 0 ]
then
    xinput set-prop $id "Device Enabled" 1
    notify-send "System Settings" "Touchpad Enabled"
else
    xinput set-prop $id "Device Enabled" 0
    notify-send "System Settings" "Touchpad Disabled"
fi
