#!/bin/sh
nvidia-settings --assign CurrentMetaMode="nvidia-auto-select +0+0 { ForceFullCompositionPipeline = On }"
setxkbmap -option grp:alt_shift_toggle us,ru
xset s off         # don't activate screensaver
xset -dpms         # disable DPMS (Energy Star) features.
xset s noblank     # don't blank the video device
picom -cfb --vsync -I 0.05 -O 0.06 -D 2
mopidy &
exec unclutter &
exec deluge &
exec nm-applet &
exec cctv &
exec awesome

