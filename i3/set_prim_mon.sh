#!/bin/bash
intern=eDP-1
extern=HDMI-1

if xrandr | grep "$extern disconnected"; then
	xrandr --output "$intern" --primary
	xrandr --auto
else
	xrandr --output "$extern" --primary --auto --output "$intern" --right-of "$extern" --auto
	xrandr --auto
fi
