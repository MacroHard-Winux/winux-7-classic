#!/bin/bash
#minimise win
xdotool key Super_L+d
sleep 0.1
xdotool key alt+space 
xdotool key n

cd ~/.icons
rm -rf Windows-7-master
#git clone https://github.com/MacroHard-Winux/Winux7-Icons.git
#mv Winux7-Icons Windows-7-master
#unzip master.zip
#wget https://github.com/MacroHard-Winux/Winux7-Icons/releases/latest/download/Windows-7-master_icon.zip
unzip Windows-7-master_icon.zip
gsettings set org.gnome.desktop.interface icon-theme 'Windows-7-master'

cd /usr/share/icons
sudo rm -rf Windows-7-master
sudo cp ~/.icons/Windows-7-master_icon.zip ./
#git clone https://github.com/MacroHard-Winux/Winux7-Icons.git
#mv Winux7-Icons Windows-7-master
#unzip master.zip
#wget https://github.com/MacroHard-Winux/Winux7-Icons/releases/latest/download/Windows-7-master_icon.zip
sudo unzip Windows-7-master_icon.zip

#a temporary payload to change the system tray applet's size
gsettings set org.cinnamon panel-zone-symbolic-icon-sizes '[ {"panelId": 1, "left": 28, "center": 28, "right": 16} ]'



WORKSPACE=$(xdotool get_desktop)
WINDOWS=$(wmctrl -l | awk "/ $WORKSPACE /" | cut -f1 -d' ')
for i in $WINDOWS; do wmctrl -ia "$i"; done

sleep 0.5

WORKSPACE=$(xdotool get_desktop)
WINDOWS=$(wmctrl -l | awk "/ $WORKSPACE /" | cut -f1 -d' ')
for i in $WINDOWS; do wmctrl -ia "$i"; done

