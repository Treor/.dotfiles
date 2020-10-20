#!/bin/sh
setxkbmap -option grp:alt_shift_toggle us,ru
xset s off         # don't activate screensaver
xset -dpms         # disable DPMS (Energy Star) features.
xset s noblank     # don't blank the video device
exec unclutter &
exec awesome

