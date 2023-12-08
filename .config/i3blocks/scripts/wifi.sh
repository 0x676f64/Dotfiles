#!/bin/bash

# Get the Wi-Fi status
wifi_status=$(iwgetid -r)
ssid=$(iwgetid -s)

# Define icons
connected_icon=""
disconnected_icon="󰤭"

# Check if connected to Wi-Fi
if [ -n "$wifi_status" ]; then
    echo "$connected_icon $ssid"
else
    echo "$disconnected_icon"
fi
