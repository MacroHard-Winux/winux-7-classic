#!/bin/bash
# Bash Menu Script Example

sleep 2
clear
sleep 2
clear

echo "You have already installed the Windows 10 Virtual Machine, running it again will OVERWRITE your previous VM"
echo -e "\e[31mThis will cause you to LOST ALL DATA that is in the VM\e[0m"
read -p "Are you sure you want to proceed? (y/n) " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    
    PS3='Please enter your choice: '
    options=("Automatically download Windows 10 iso (can be slow)" "Download iso with your browser" "Download Windows 10 LightWeight Version (For low-end PCs)" "Quit")
    select opt in "${options[@]}"
    do
        case $opt in
            "Automatically download Windows 10 iso (can be slow)")
                cd "$(dirname "$0")"
                ./installvmAuto.sh
                ;;
            "Download iso with your browser")
                cd "$(dirname "$0")"
                ./installvmBrowser.sh
                ;;
	    "Download Windows 10 LightWeight Version (For low-end PCs)")
                cd "$(dirname "$0")"
                ./installvmAtlas.sh
                ;;
            "Quit")
                echo "exiting..."
                break
                ;;
            *) echo "invalid option $REPLY";;
        esac
    done

fi

