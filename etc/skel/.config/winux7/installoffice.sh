#!/bin/bash
sleep 2
clear
sleep 2
clear
echo "Installing Microsoft Office 2007"
echo "Use this serial to install:"
echo
echo "KGFVY-7733B-8WCK9-KTG64-BC7D8"
echo
cd ~/.config/winux7/
tar zxf MSOffice2007Setup.tar.gz
wine ~/.config/winux7/MSOffice2007Setup/setup.exe

sleep 1
kill $PPID
