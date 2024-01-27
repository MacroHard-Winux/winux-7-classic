#!/bin/bash
gnome-terminal -- bash -c "/etc/skel/.config/winux7/firstLaunchNoti.sh &&   firefox "https://macrohard-winux.github.io/winux7/troubleshoot/installvm/" >/dev/null 2>&1 & ~/.config/winux7/installvm.sh && mv ~/.config/winux7/secondRun/Install\ Windows\ VM.sh ~/Desktop/Winux\ Tools/; exec bash"
