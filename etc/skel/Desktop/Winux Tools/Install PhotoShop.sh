#!/bin/bash
gnome-terminal -- bash -c "~/.config/winux7/installPhotoshop.sh; exec bash" ; sleep 0.5 && xdotool key 1 && xdotool key Return
