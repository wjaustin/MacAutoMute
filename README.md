# MacAutoMute
Scripts to automatically mute the audio of a Macintosh computer for Internal Speakers only

# How it works
This script will check the audio source currently being used every 3 seconds.  If the audio source is the Mac's internal speakers, then the volume will be set to 0.
This script is set up to start upon OS X booting.

# Installation Instructions
## For Mac OS X 10.11 El Capitan and Later
As of OS X 10.11 El Capitan (and on all later releases as of the writing of this document), there is a feature called System Integrity Protection enabled by default on OS X.  This feature stops the installation script from moving the audiodevice file to /bin (which adds it to PATH).  Therefore, on these versions of OS X, the following steps must be taken before continuing:
###### Disable System Integrity Protection
1. Reboot the Mac into recovery mode by holding Command + R as the Mac turns on
2. Select Utilities, then Terminal to open a Terminal window
3. Type `csrutil disable` to disable System Integrity Protection
4. Reboot the Mac normally

Note: You can re enable csrutil after installation by rebooting into recovery mode again and running `csrutil enable` in a Terminal window.

## To Install
1. Open a Terminal window and navigate to the MacAutoMute directory
2. In the Terminal, type `sudo chmod +x install.sh` to enable executing the install.sh script
3. Run the install script with superuser permissions by running `sudo ./install.sh`

## To Uninstall
1. Open a Terminal window and navigate to the MacAutoMute directory
2. In the Terminal, type `sudo chmod +x uninstall.sh` to enable executing the uninstall.sh script
3. Run the uninstall script with superuser permissions by running `sudo ./uninstall.sh`
