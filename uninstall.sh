#!/bin/sh

# MUST be run with superuser permissions

# Removes files and directories created by install.sh
rm /bin/audiodevice
rm /Library/LaunchDaemons/com.autoMute.restart.plist
rm -R /Library/Management

