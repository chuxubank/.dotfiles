#!/usr/bin/env bash
MONITOR=$(xrandr -q | grep HDMI-1 | cut -d' ' -f1)
xrandr --output $MONITOR --primary --auto --right-of eDP1
