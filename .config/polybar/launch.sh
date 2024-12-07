#!/bin/bash

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#                       Launch Polybar                                      #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

killall -q polybar

while pgrep -u $UID polybar > /dev/null; do sleep 1; done

PRIMARY_MONITOR=$(xrandr --listmonitors | awk '/\*/ {print $2}')

if [[ -n "$PRIMARY_MONITOR" ]]; then
    polybar -c ~/.config/polybar/config main -r -m $PRIMARY_MONITOR &
    echo "Polybar launched on $PRIMARY_MONITOR..."
else
    echo "No primary monitor found. Polybar not launched."
fi