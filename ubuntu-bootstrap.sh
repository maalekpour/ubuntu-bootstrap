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
        vlc gufw gparted gnome-shell-extensions uget handbrake \
        smplayer timeshift

}

install_machine_vision() {
    echo -e "${BLUE}>>> Updating package lists...${RESET}"
    sudo apt update

    echo -e "${BLUE}>>> Installing Machine Vision / Computer Vision development stack...${RESET}"

    sudo apt install -y \
        # === Core OpenCV + Python bindings ===
        python3-opencv \
        libopencv-dev \
        libopencv-contrib-dev \     # extra modules (often wanted in dev)
        # === Scientific / numeric basics ===
        python3-numpy \
        python3-scipy \
        python3-matplotlib \
        # === Build tools (very useful when you need to compile OpenCV yourself or add custom modules) ===
        build-essential \
        cmake \
        pkg-config \
        git \
        # === Video / camera support & debugging ===
        v4l-utils \
        ffmpeg \
        guvcview \
        libv4l-dev \
        libavcodec-dev \
        libavformat-dev \
        libswscale-dev \
        libavutil-dev \
        # === Image I/O & useful formats ===
        libjpeg-dev \
        libpng-dev \
        libtiff-dev \
        libopenexr-dev \
        # === Common GUI & visualization ===
        python3-pyqt5 \
        python3-tk \
        # === Helpers for calibration, annotation, dataset tools ===
        python3-pil \
        python3-pandas \
        labelme \                   # popular simple image annotation tool
        # === Optional: gstreamer (very useful for real-time streams, RTSP, webcams, Jetson, ...) ===
        libgstreamer1.0-dev \
        libgstreamer-plugins-base1.0-dev \
        gstreamer1.0-plugins-good \
        gstreamer1.0-plugins-bad \
        gstreamer1.0-plugins-ugly \
        gstreamer1.0-libav \
        gstreamer1.0-tools \
        # === Optional: extra performance / hardware acceleration ===
        libtbb-dev \
        libeigen3-dev

    echo -e "${GREEN}>>> Core system packages for machine vision installed.${RESET}"

    echo -e "${YELLOW}>>> Consider also installing via pip (in your virtualenv):${RESET}"
    echo "   pip install opencv-contrib-python  # (if you want latest features)"
    echo "   pip install scikit-image pillow albumentations supervision opencv-python-headless"
    echo "   pip install torch torchvision torchaudio  # if doing deep learning CV"
    echo "   pip install tensorflow                   # alternative DL framework"
    echo "   pip install ultralytics                  # YOLOv8/v9/v10/v11..."
    echo "   pip install mediapipe                    # very useful for face/hand/pose"

    echo -e "${GREEN}>>> Machine vision development stack installation finished.${RESET}"
    echo -e "    Test OpenCV:  python3 -c \"import cv2; print(cv2.__version__)\""
    echo -e "    Test camera:  guvcview  or  ffplay /dev/video0"
}


install_network() {
    echo -e "${YELLOW}>>> Installing Network Tools...${RESET}"
    sudo apt install -y wireshark net-tools nmap
}

install_gui_apps() {
    echo -e "${GREEN}>>> Installing GUI Apps...${RESET}"
    sudo apt install -y simplescreenrecorder ktouch conky ktouch \
			codeblocks 
}

install_snaps() {
    echo -e "${BLUE}>>> Installing Snap Apps...${RESET}"
    sudo snap install telegram-desktop
    sudo snap install cups
    sudo snap install sticky-notes-simple
    sudo snap install obs-studio
    sudo snap install winrar
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
    echo "2) General Setup(snap ,gui , etc)"
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
        install_gui_apps
        install_snaps
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
