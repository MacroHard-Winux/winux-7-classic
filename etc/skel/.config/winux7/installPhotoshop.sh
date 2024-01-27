#!/bin/bash
/etc/skel/.config/winux7/firstLaunchNoti.sh
firefox "https://macrohard-winux.github.io/winux7/troubleshoot/installphotoshop/" >/dev/null 2>&1 &
sleep 2
clear
sleep2 
clear
echo "Installing Photoshop,"
echo "You might might be ask for the root password"

cd ~/
git clone https://github.com/MacroHard-Winux/photoshopCClinux-Winux.git
cd photoshopCClinux-Winux
chmod +x setup.sh
./setup.sh

mv ~/.config/winux7/secondRun/installPhotoshop.sh ~/.config/winux7/
sleep 1
kill $PPID
