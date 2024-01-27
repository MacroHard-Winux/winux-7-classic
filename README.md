# All the customisation is added to make Winux 7 Classic possible.  
To use it, dump all of the files in the repo into the root folder of a Linux Mint 20.3 installation. Or only add the parts that you like.  
## Use at your own risk  
You are on your own, good luck  

# Package needed and what they do
wine - Run Windows files  
winetricks - Run Windows files, but make it easier  
python3-pip - package manager for python  
caja - file manager that Winux 7 uses, you can choose to not use it and keep nemo if you want  
konsole - use to run script on start-up  
vlc - media player I personally like it better then celluloid. you can choose to not use it and install mpv or other  
xdotool - automate clicks during one click installation  
dconf-editor - regedit for Linux, cool to have  
opencv-python:
pip install opencv-python
OneDriveGUI:
pip install -r /etc/skel/.config/winux7/OneDriveGUI/requirements.txt
Caja Plugins:
sudo apt install -y caja-actions caja-admin caja-extensions-common caja-image-converter caja-mediainfo caja-open-terminal caja-rename caja-sendto caja-share
sudo apt purge mate-terminal pluma

Chrome - Optional, good for new users:
apt install libu2f-udev
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

install lightdm-webkit-greeter:
wget http://archive.ubuntu.com/ubuntu/pool/universe/l/lightdm-webkit-greeter/lightdm-webkit-greeter_0.1.2-0ubuntu4_amd64.deb
wget https://deb.sipwise.com/debian/pool/main/w/webkitgtk/libjavascriptcoregtk-1.0-0_2.4.11-3_amd64.deb
wget http://launchpadlibrarian.net/317614660/libicu57_57.1-6_amd64.deb
wget http://old-releases.ubuntu.com/ubuntu/pool/universe/w/webkitgtk/libwebkitgtk-1.0-0_2.4.11-3_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg62-turbo_2.1.5-2_amd64.deb
apt --fix-broken install
dpkg -i libicu57_57.1-6_amd64.deb
dpkg -i libjavascriptcoregtk-1.0-0_2.4.11-3_amd64.deb
apt install libegl1-mesa libenchant1c2a &
dpkg -i libjpeg62-turbo_2.1.5-2_amd64.deb
dpkg -i libwebkitgtk-1.0-0_2.4.11-3_amd64.deb
dpkg -i lightdm-webkit-greeter_0.1.2-0ubuntu4_amd64.deb

# Stuff to remove  
libreoffice  
celluloid - optional you can keep it if you want to
