#!/bin/bash
cd ~/.icons
rm -rf Windows-7-master
wget https://github.com/B00merang-Artwork/Windows-7/archive/master.zip
unzip master.zip
gsettings set org.gnome.desktop.interface icon-theme 'Windows-7-master'
notify-send Done! Icons\ fixed\ :D
