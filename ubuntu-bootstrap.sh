#!/usr/bin/env bash
set -e

# Colors
BLUE="\e[1;34m"
GREEN="\e[1;32m"
YELLOW="\e[1;33m"
RED="\e[1;31m"
RESET="\e[0m"

update_system() {
    echo -e "${RED}>>> Updating system...${RESET}"
    sudo apt update -y && sudo apt upgrade -y
}

install_general() {
    echo -e "${GREEN}>>> Installing General Tools...${RESET}"
    sudo apt install -y build-essential curl wget git \
        software-properties-common apt-transport-https \
        ca-certificates gnupg htop lm-sensors rar unrar \
        vlc gufw gparted
}

install_machine_vision() {
    echo -e "${BLUE}>>> Installing Machine Vision Stack...${RESET}"
    sudo apt install -y python3-opencv python3-numpy \
        v4l-utils ffmpeg guvcview
}

install_network() {
    echo -e "${YELLOW}>>> Installing Network Tools...${RESET}"
    sudo apt install -y wireshark net-tools nmap
}

install_gui_apps() {
    echo -e "${GREEN}>>> Installing GUI Apps...${RESET}"
    sudo apt install -y simplescreenrecorder ktouch conky
}

install_snaps() {
    echo -e "${BLUE}>>> Installing Snap Apps...${RESET}"
    sudo snap install telegram-desktop
    sudo snap install cups
    sudo snap install sticky-notes-simple
}

cleanup() {
    echo -e "${RED}>>> Cleaning up...${RESET}"
    sudo apt autoremove -y && sudo apt autoclean
}

show_menu() {
    echo -e "${YELLOW}"
    echo "======================================"
    echo " Select Installation Profile"
    echo "======================================"
    echo "1) Machine Vision Setup"
    echo "2) General Setup"
    echo "3) Network Tools"
    echo "4) GUI Applications"
    echo "5) Snap Apps"
    echo "6) Full Installation (All)"
    echo "0) Exit"
    echo "======================================"
    echo -e "${RESET}"
}

### MAIN
show_menu
read -p "Enter your choice: " choice

case $choice in
    1)
        update_system
        install_machine_vision
        ;;
    2)
        update_system
        install_general
        ;;
    3)
        update_system
        install_network
        ;;
    4)
        update_system
        install_gui_apps
        ;;
    5)
        install_snaps
        ;;
    6)
        update_system
        install_general
        install_machine_vision
        install_network
        install_gui_apps
        install_snaps
        ;;
    0)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo -e "${RED}Invalid option!${RESET}"
        exit 1
        ;;
esac

cleanup
echo -e "${BLUE}>>> DONE. Restart recommended.${RESET}"
