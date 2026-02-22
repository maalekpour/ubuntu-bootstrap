# ubuntu-bootstrap
Automated Ubuntu post-install bootstrap script for development and workstation setup.

# Ubuntu Development Workstation Bootstrap

![Ubuntu](https://img.shields.io/badge/OS-Ubuntu-orange) ![Bash](https://img.shields.io/badge/Shell-Bash-blue) ![Status](https://img.shields.io/badge/Status-Ready%20to%20Use-green)

Automated Ubuntu post-install setup script for developers, engineers, and power users.  
This script installs essential development tools, network utilities, desktop applications, and other handy packages to get your workstation ready quickly.

---

## Features

- **System Update & Upgrade**
  - Keeps your Ubuntu system up-to-date automatically.

- **Development Tools**
  - `build-essential`, `git`, `curl`, `wget`, `gnupg`, `software-properties-common`

- **Terminal & Network Utilities**
  - `htop`, `lm-sensors`, `rar`, `unrar`
  - `wireshark`, `net-tools`, `nmap`

- **GUI Applications**
  - `simplescreenrecorder`, `ktouch`, `conky`
  - Telegram, Sticky Notes, Cups (via Snap)

- **Desktop & Optional Rescue**
  - Ubuntu wallpaper packages and other useful desktop packages.

- **Media & Utility Tools**
  - `vlc`, `gufw`, `gparted`

- **Automatic Cleanup**
  - `autoremove` and `autoclean` for a clean system.

---

## Installation & Usage

1. Clone this repository:

```bash
git clone https://github.com/USERNAME/ubuntu-dev-bootstrap.git
cd ubuntu-dev-bootstrap
