#!/bin/sh

# MUST be run with superuser permissions

# get directory the script is stored in
BASEDIR=$(dirname "$0")

cp $BASEDIR/Audiodevice/audiodevice /bin
cp $BASEDIR/com.autoMute.restart.plist /Library/LaunchDaemons

# Create /Library/Management if it doesn't exist
if [ ! -d "/Library/Management" ]; then
mkdir /Library/Management
fi

cp $BASEDIR/autoMute.sh /Library/Management
chmod +x /Library/Management/autoMute.sh

