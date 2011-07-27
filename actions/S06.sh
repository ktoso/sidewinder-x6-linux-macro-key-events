#!/bin/sh
# Example code, using xdotool ( you may need to install it: http://www.semicomplete.com/projects/xdotool/ )
# on fedora: sudo yum install xdotool
# on ubuntu: sudo apt-get install xdootool
#
# WID=`xdotool search "Mozilla Firefox" | head -1`
# xdotool windowactivate --sync $WID
# xdotool key --clearmodifiers ctrl+l

xdotool key --clearmodifiers ctrl+shift+F6
