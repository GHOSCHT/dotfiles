#!/bin/bash
# NAME
#     backlight.sh - Increase/decrease screen brightness

step=1   # number of percentage points to increase/decrease backlight

if [ $1 == "raise" ]; then
   brightnessctl s "+${step}%"
elif [ $1 == "lower" ]; then
   brightnessctl s "${step}%-"
else
  echo "Unrecognized parameter: ${1}"
  echo "Usage should be: backlight.sh <raise|lower>"
fi
