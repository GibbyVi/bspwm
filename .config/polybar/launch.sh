#!/bin/bash

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#                       Launch Polybar                                      #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

killall -q polybar

while pgrep -u $UID polybar > /dev/null; do sleep 1; done

polybar arch >> ~/.config/polybar/polybar.log 2>&1 &

echo "Polybar lanzada correctamente."