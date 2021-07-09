#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

for m in $(xrandr --query | rg " connected" | cut -d" " -f1); do

  # eDP is the laptop screen where we want the tray
  if [ "$m" == "eDP" ]; then
    export TRAYPOS=right
  fi

  MONITOR=$m polybar -c ~/.config/polybar/config.ini --reload mainbar &
  unset TRAYPOS
done
