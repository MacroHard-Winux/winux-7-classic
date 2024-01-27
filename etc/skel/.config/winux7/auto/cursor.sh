#!/bin/bash
cd ~/.icons
rm -rf ~/.icons/Win7OS-cursors/
wget https://github.com/MacroHard-Winux/winux7-Cursor/releases/download/1.0.0/Windows-7-master-cursor.zip
unzip Windows-7-master-cursor.zip
gsettings set org.cinnamon.desktop.interface cursor-theme 'Win7OS-cursors'

sleep 10
