#!/bin/sh
# Infinite loop to allow for continuous running while the computer is on
while [ 1 ]
do

# Check audio device using the audiodevice command line tool
OUTPUT=`audiodevice output`

# Can check for multiple outputs if you'd like to use this for more than just muting Internal Speakers
if [ "$OUTPUT" = "Internal Speakers" ]; then
# If the audio device is `Internal Speakers` then set volume to 0
osascript -e "set Volume 0"
fi

# wait 3 seconds before running again.  Change this number to make the script check more or less frequently.
sleep 3
done
