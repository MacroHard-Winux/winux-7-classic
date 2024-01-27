#!/bin/bash
echo "Installing Photoshop,"
echo "You might might be ask for the root password"

cd ~/
git clone https://github.com/MacroHard-Winux/photoshopCClinux-Winux.git
cd photoshopCClinux-Winux
chmod +x setup.sh
./setup.sh

sleep 1
kill $PPID
