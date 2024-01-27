#!/bin/bash
gnome-terminal -- bash -c "/etc/skel/.config/winux7/firstLaunchNoti.sh && firefox "https://macrohard-winux.github.io/winux7/troubleshoot/installoffice/" >/dev/null 2>&1 & ~/.config/winux7/installoffice.sh && firefox https://macrohard-winux.github.io/winux7/troubleshoot/fixoffice/ && mv ~/.config/winux7/secondRun/Install\ MS\ Office.sh ~/Desktop/Winux\ Tools/; exec bash"
