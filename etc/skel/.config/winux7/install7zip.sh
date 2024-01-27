#!/bin/bash
echo Winux7 Will install 7Zip on your system
echo You might be asked for the root password for installing 7Zip
sleep 10
sudo mv /etc/apt/preferences.d/nosnap.pref ~/Documents/nosnap.backup
sudo apt update
sudo apt install snapd
sudo snap install p7zip-desktop
cp ~/.config/winux7/p7zip-desktop_p7zip-desktop.desktop ~/.local/share/applications/
cp ~/.config/winux7/p7zip-desktop_p7zip-desktop.desktop ~/Desktop/ && mv ~/Desktop/Winux\ Tools/Install\ 7Zip.sh ~/.config/winux7/ && echo done
sleep 2
kill $PPID
