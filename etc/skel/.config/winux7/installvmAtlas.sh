#!/bin/bash
echo Winux7 Will install A Windows 10 virtual machine on your system
echo You might be asked for the root password for installing the virtual machine
sleep 5

sudo apt install virt-manager

echo Downloading the iso, this might take a few minute, do not close this windows
sleep 2.5

cd ~/Downloads
ls
sudo rm -f ~/Downloads/Atlas_v0.5.2_21H2.iso
wget https://archive.org/download/atlas-v-0.5.2-21-h-2_202303/Atlas_v0.5.2_21H2.iso

echo The setup will now install Windows 10 onto the VM, please standby and complete the installation.
sleep 2.5

mkdir ~/.windowskvm
mkdir ~/.windowskvm/images
cd ~/

sudo virt-install --name=win10 \
--os-type=Windows \
--os-variant=win10 \
--vcpu=3 \
--ram=3072 \
--disk path=~/.windowskvm/images/windows.img,size=16 \
--graphics spice \
--cdrom=Downloads/Atlas_v0.5.2_21H2.iso \
--network bridge:virbr0

cp ~/.config/winux7/win10vm.desktop ~/.local/share/applications

echo The VM is now installed, to start the vm, you can run a programe called "Virtual Machine Manager"

cp ~/.config/winux7/secondRun/Install\ Windows\ VM.sh ~/Desktop/Winux\ Tools

sleep 10
killall bash
