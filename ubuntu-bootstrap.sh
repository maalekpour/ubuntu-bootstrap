# #!/usr/bin/env bash

# set -e

# echo ">>> Updating system..."
# sudo apt update -y && sudo apt upgrade -y

# echo ">>> Installing essential tools..."
# sudo apt install -y build-essential curl wget git software-properties-common apt-transport-https ca-certificates gnupg

# echo ">>> Installing terminal tools..."
# sudo apt install -y htop lm-sensors rar unrar

# echo ">>> Installing network tools..."
# sudo apt install -y wireshark net-tools nmap

# echo ">>> Installing GUI apps (APT)..."
# sudo apt install -y simplescreenrecorder ktouch conky

# echo ">>> Installing Telegram (snap)..."
# sudo snap install telegram-desktop

# echo ">>> Installing Sticky Notes (snap)..."
# sudo snap install sticky-notes-simple

# echo ">>> Installing Visual Studio Code (snap)..."
# sudo snap install code --classic

# # echo ">>> Installing Microsoft Edge..."
# # wget -O edge.deb https://go.microsoft.com/fwlink?linkid=2149051
# # sudo dpkg -i edge.deb || sudo apt -f install -y
# # rm edge.deb

# # echo ">>> Installing Google Chrome..."
# # wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# # sudo dpkg -i google-chrome-stable_current_amd64.deb || sudo apt -f install -y
# # rm google-chrome-stable_current_amd64.deb

# echo ">>> Installing GNOME Shell extensions integration (Chrome)..."
# sudo apt install -y chrome-gnome-shell

# # echo ">>> Installing Arduino IDE (AppImage)..."
# # mkdir -p ~/Applications
# # cd ~/Applications
# # wget https://downloads.arduino.cc/arduino-ide/arduino-ide_latest_Linux_64bit.AppImage -O arduino-ide.AppImage
# # chmod +x arduino-ide.AppImage
# # cd ~

# # echo ">>> Installing Telegram Desktop (APT alternative in case)..."
# # sudo apt install -y telegram-desktop || true

# echo ">>> Installing Ubuntu desktop meta (optional rescue)..."
# sudo apt install -y ubuntu-wallpaper*

# echo ">>> Installing other useful tools..."
# sudo apt install -y vlc gufw gparted

# echo ">>> Cleaning up..."
# sudo apt autoremove -y && sudo apt autoclean

# echo ">>> ALL DONE! Restart recommended."
#!/usr/bin/env bash

set -e

# Bold + رنگ‌ها
BLUE="\e[1;34m"
GREEN="\e[1;32m"
YELLOW="\e[1;33m"
RED="\e[1;31m"
RESET="\e[0m"

echo -e "${RED}>>> Updating system...${RESET}"
sudo apt update -y && sudo apt upgrade -y

echo -e "${GREEN}>>> Installing essential tools...${RESET}"
sudo apt install -y build-essential curl wget git software-properties-common apt-transport-https ca-certificates gnupg

echo -e "${YELLOW}>>> Installing terminal tools...${RESET}"
sudo apt install -y htop lm-sensors rar unrar

echo -e "${YELLOW}>>> Installing network tools...${RESET}"
sudo apt install -y wireshark net-tools nmap

echo -e "${GREEN}>>> Installing GUI apps (APT)...${RESET}"
sudo apt install -y simplescreenrecorder ktouch conky

echo -e "${BLUE}>>> Installing Telegram (snap)...${RESET}"
sudo snap install telegram-desktop

echo -e "${BLUE}>>> Installing Open print (snap)...${RESET}"
sudo snap install cups

echo -e "${BLUE}>>> Installing Sticky Notes (snap)...${RESET}"
sudo snap install sticky-notes-simple

# echo -e "${BLUE}>>> Installing Visual Studio Code (snap)...${RESET}"
# sudo snap install code --classic

echo -e "${GREEN}>>> Installing GNOME Shell extensions integration (Chrome)...${RESET}"
sudo apt install -y chrome-gnome-shell

echo -e "${YELLOW}>>> Installing Ubuntu desktop meta (optional rescue)...${RESET}"
sudo apt install -y ubuntu-wallpaper*

echo -e "${GREEN}>>> Installing other useful tools...${RESET}"
sudo apt install -y vlc gufw gparted

echo -e "${RED}>>> Cleaning up...${RESET}"
sudo apt autoremove -y && sudo apt autoclean

echo -e "${BLUE}>>> ALL DONE! Restart recommended.${RESET}"
