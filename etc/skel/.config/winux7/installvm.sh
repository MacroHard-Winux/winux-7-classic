#!/bin/bash
# Bash Menu Script Example

sleep 2
clear
sleep 2
clear

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
