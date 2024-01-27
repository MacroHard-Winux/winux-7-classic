#!/bin/bash
cd ~/.icons
rm -rf Windows-7-master
#git clone https://github.com/MacroHard-Winux/Winux7-Icons.git
#mv Winux7-Icons Windows-7-master
#unzip master.zip
wget https://github.com/MacroHard-Winux/Winux7-Icons/releases/download/1.1.0/Windows-7-master_icon.zip
unzip Windows-7-master_icon.zip
gsettings set org.gnome.desktop.interface icon-theme 'Windows-7-master'
notify-send Done! Icons\ fixed\ :D

#a temperrery payload to change the system tray applet's size
#gsettings set org.cinnamon panel-zone-symbolic-icon-sizes '[ {"panelId": 1, "left": 28, "center": 28, "right": 24} ]'

sleep 10
