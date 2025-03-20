# yantra-dvayo-nvim

# 🚀 Yantra Dvayo Neovim Setup Guide

Welcome to **Yantra Dvayo Neovim**! This guide will help you clone and set up your custom Neovim configuration on **Windows, macOS, and Linux**. Let’s get started! 😃

---

## 🔧 1️⃣ Install Dependencies

Before setting up Neovim, install the required dependencies:

### 📌 Required Packages:
- **Neovim** (Latest version)
- **Git** (For cloning the repository)
- **Ripgrep** (For better searching and fuzzy finding)

### 🖥️ Windows
1. Install Neovim from [Neovim Releases](https://github.com/neovim/neovim/releases)
2. Install Git from [Git for Windows](https://git-scm.com/download/win)
3. Download the latest `.zip` file from [Ripgrep Releases](https://github.com/BurntSushi/ripgrep/releases).
4. Extract the contents and place them in a directory like `C:\Program Files\ripgrep`.
5. Add the extracted folder to your **System PATH**.
6. Verify installation by running:
   ```powershell
   rg --version
   ```

### 🍏 macOS
```sh
brew install neovim git ripgrep
```
Verify installations:
```sh
nvim --version
rg --version
```

### 🐧 Linux (Debian/Ubuntu)
```sh
sudo apt install neovim git ripgrep
```

### 🐧 Linux (Arch)
```sh
sudo pacman -S neovim git ripgrep
```

---

## 📥 2️⃣ Clone the Repository

### 🖥️ Windows
1. Open **Command Prompt (cmd)** or **PowerShell**.
2. Navigate to Neovim's config directory:
   ```powershell
   cd $env:LOCALAPPDATA
   ```
3. Clone the repository directly into the Neovim config directory:
   ```powershell
   git clone https://github.com/yantra0011/yantra-dvayo-nvim.git nvim
   ```
4. Open Neovim:
   ```sh
   nvim
   ```

### 🍏 macOS
1. Open **Terminal**.
2. Navigate to Neovim's config directory:
   ```sh
   cd ~/.config
   ```
3. Clone the repository directly into the Neovim config directory:
   ```sh
   git clone https://github.com/yantra0011/yantra-dvayo-nvim.git nvim
   ```
4. Open Neovim:
   ```sh
   nvim
   ```

### 🐧 Linux (Ubuntu, Arch, etc.)
1. Open **Terminal**.
2. Navigate to Neovim's config directory:
   ```sh
   cd ~/.config
   ```
3. Clone the repository directly into the Neovim config directory:
   ```sh
   git clone https://github.com/yantra0011/yantra-dvayo-nvim.git nvim
   ```
4. Open Neovim:
   ```sh
   nvim
   ```

---

## ✅ 3️⃣ Final Steps
Now that everything is set up, launch Neovim and enjoy your fully customized **Yantra Dvayo Neovim** experience! 🚀
```sh
nvim
```

---

🎯 **Need Help?** Open an issue on the [GitHub Repository](https://github.com/yantra0011/yantra-dvayo-nvim). Happy coding! 😃
