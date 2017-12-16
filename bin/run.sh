#!/bin/bash

xrandr --fb 4160x1800 --output "DP-2" --scale 1.44x1.0 --panning 4160x1800+0+0/4160x1800+0+0
xrandr --fb 4160x1800 --output "DP-2" --scale 1.44x1.0 --panning 2880x1800+0+0/4160x1800+0+0

# run x11vnc -clip 1280x720+2880+0 -nocursorshape -nocursorpos -xrandr -ncache 1 -nosel -viewonly -fixscreen \"V=2\" -noprimary -nosetclipboard -noclipboard -noxdamage -sb 0 -display :0
run x11vnc -clip 1280x720+2880+0
