#!/bin/bash

## Log and Run commands
function run () {
	echo "$1"
	$1
}


# ./monitor.sh 1280x720 -left -v2
run xrandr --fb 4160x1800 --output "DP-2" --scale 1.0x1.0 --panning 4160x1800+0+0/4160x1800+0+0
sleep 5
run xrandr --fb 4160x1800 --output "DP-2" --scale 1.0x1.0 --panning 2880x1800+0+0/4160x1800+0+0


run x11vnc -clip 1280x720+2880+0

xrandr --fb 2880x1800 --output "DP-2" --scale 1.0x1.0 --panning 2880x1800+0+0/2880x1800+0+0
## Turn VirtualDisplay off
# run "xrandr --output $virtual --off"
# run "xrandr --delmode $virtual $mode"
# run "xrandr --rmmode $mode"
# run "xrandr -s 0"
