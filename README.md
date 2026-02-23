# Linux Setup Automation Script

A modular, interactive Linux setup script designed to automate package installation based on selected usage profiles.

This project replaces a linear installation script with a scalable, profile-based installer using an interactive CLI menu.

---

## Features

* Interactive installation menu
* Modular function-based architecture
* Machine Vision setup profile
* General development environment setup
* Network tools profile
* GUI applications profile
* Snap package support
* Clean-up routine after installation

---

## Installation

### 1. Clone the Repository

```bash
git clone https://github.com/YOUR_USERNAME/YOUR_REPOSITORY.git
cd YOUR_REPOSITORY
```

---

### 2. Give Execute Permission

```bash
chmod +x Os.sh
```

---

### 3. Run the Script

```bash
./Os.sh
```

You will be prompted to select an installation profile from the menu.

---

## Available Installation Profiles

| Option | Profile           | Description                           |
| ------ | ----------------- | ------------------------------------- |
| 1      | Machine Vision    | OpenCV, NumPy, V4L tools, FFmpeg      |
| 2      | General Setup     | Essential build and utility tools     |
| 3      | Network Tools     | Wireshark, Nmap, Net-tools            |
| 4      | GUI Applications  | Screen recorder, system monitor, etc. |
| 5      | Snap Apps         | Telegram, CUPS, Sticky Notes          |
| 6      | Full Installation | Installs all profiles                 |
| 0      | Exit              | Abort execution                       |

---

## Requirements

* Ubuntu or Debian-based distribution
* sudo privileges
* Internet connection

---

## Notes

* The script uses `set -e` to stop execution on errors.
* System update runs before profile installation (except Snap-only mode).
* A system restart is recommended after completion.

---

## Contributing

Pull requests are welcome. For major changes, open an issue first to discuss proposed modifications.

---

## License

MIT License
