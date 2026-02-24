# Ubuntu Developer Bootstrap

**One-command modular post-install setup for Ubuntu developer workstations**  
Interactive CLI menu • Machine Vision & Computer Vision ready • Modern C++/Python toolchain • Clean & beautiful output

[![Ubuntu 24.04+](https://img.shields.io/badge/Ubuntu-24.04%20%7C%2024.10%20%7C%2025.04-orange?style=flat&logo=ubuntu)](https://ubuntu.com)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![ShellCheck](https://github.com/YOUR_USERNAME/YOUR_REPOSITORY/actions/workflows/shellcheck.yml/badge.svg)](https://github.com/YOUR_USERNAME/YOUR_REPOSITORY/actions) <!-- optional – add later -->

---

## ✨ Why this script?

This is **not** another 3000-line monolithic bootstrap.  
It gives you:

- clean separation of concerns (one function = one concern)
- interactive profile selection
- focused machine-vision / computer-vision ready stack
- modern developer CLI experience (ripgrep, bat, fd, btop, …)
- reasonable defaults for 2025–2026 development

Perfect for fresh Ubuntu installs, VM resets, new workstations, teaching environments, CV/ML side projects, etc.

## 📋 Available Profiles

| #  | Profile              | Main components installed                                                                 | Best for                                 |
|----|----------------------|--------------------------------------------------------------------------------------------|------------------------------------------|
| 1  | **Machine Vision**   | OpenCV(+contrib), GStreamer, scientific stack, labelme, guvcview, ffmpeg, v4l-utils…      | Computer Vision, robotics, YOLO, mediapipe |
| 2  | **General Setup**    | gcc/clang/cmake, Python venv+black+isort+mypy, ripgrep/bat/fd/exa/btop, tmux/zsh/neovim…  | General software dev (C++/Python/Rust/…) |
| 3  | **Network Tools**    | wireshark, nmap, tcpdump, net-tools                                                        | Networking, security, debugging          |
| 4  | **GUI Applications** | simplescreenrecorder, conky, ktouch, codeblocks                                            | Daily desktop + light IDE                |
| 5  | **Snap Apps**        | telegram-desktop, obs-studio, winrar, sticky-notes-simple, cups                           | Communication + streaming + compatibility|
| 6  | **Full Installation**| **Everything above** (recommended for powerful dev + CV workstation)                       | New powerful setup from scratch          |
| 0  | Exit                 | —                                                                                          | —                                        |

## 🚀 Quick Start

```bash
# 1. Clone
git clone https://github.com/YOUR_USERNAME/ubuntu-bootstrap.git
cd ubuntu-bootstrap

# 2. Make executable
chmod +x ubuntu-bootstrap.sh

# 3. Run
./ubuntu-bootstrap.sh
```

## CLI cheatsheet
```
# Super fast search in files
rg "error.*database" ~/projects

# Find files (ignores .git, node_modules by default)
fd main.py
fd -e cpp "parser"

# Pretty cat
bat README.md
bat --diff old.py new.py   # shows git-like diff

# Modern ls
exa --icons --git --long
exa --tree --level=2

# Fancy system monitor
btop

# One-command system overview
glances

# Pretty-print json
curl api.example.com/data | jq .

# Pretty yaml
cat config.yaml | yq e '.spec.template'
```


