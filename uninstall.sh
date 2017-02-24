#!/bin/sh

# MUST be run with superuser permissions

# Removes files and directories created by install.sh
rm /bin/audiodevice
rm /Library/LaunchDaemons/com.autoMute.restart.plist
rm /Library/Management/autoMute.sh
if [ ! "$(ls -A /Library/Management)" ]; then
	rm -R /Library/Management/
fi

