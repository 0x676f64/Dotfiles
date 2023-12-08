#!/bin/bash

# Get the CPU temperature in Celsius
temperature_celsius=$(sensors | awk '/^Package/ {print $4}')

# Convert Celsius to Fahrenheit
temperature_fahrenheit=$(awk "BEGIN {print $temperature_celsius * 9/5 + 32}")

# Define the temperature icon
temperature_icon=""

echo "$temperature_icon $temperature_fahrenheit°F"
