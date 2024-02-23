#!/bin/sh
intern=eDP1
extern=HDMI2

if xrandr | grep "$extern disconnected"; then
    xrandr --output "$extern" --off --output "$intern" --auto --scale 1x1 --mode 1920x1080
else
    xrandr --output "$intern" --off --output "$extern" --auto --scale 1x1 --mode 1920x1080
fi