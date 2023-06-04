#!/bin/bash

#killall -q polybar
#while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
#polybar bspwm &

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m ~/.config/polybar/grayblocks/launch.sh --reload bspwm &
  done
else
 ~/.config/polybar/grayblocks/launch.sh --reload bspwm &
fi
