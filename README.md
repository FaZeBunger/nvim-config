# Requirements
- Neovim >= 0.9.0
- Git
- WinGet (For Automatic Install, Windows only, comes pre-installed with Windows 11)
- NerdFonts (For Icons, Optional)


# Manual Installation
- Install Neovim 0.9.0 or higher from [Neovim's official website](https://neovim.io/)
- Install Git from [Git's official website](https://git-scm.com/)
- Install RipGrep [Instructions](https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation)
- Install a [NerdFont](https://www.nerdfonts.com/) (***Optional***)
- Install Node.js and npm from [Node.js's official website](https://nodejs.org/) (***Note, this is only for copilot***)
- Install Python3 from [Python's official website](https://www.python.org/) (***This is necessary for some LSP's to install through Mason***)
- Install a C/C++ compiler (***This is necessary for some LSP's to install through Mason***) 
- Clone this repository to your Neovim configuration directory (Usually `~/.config/nvim` or `$HOME\AppData\Local\nvim` on Windows)
```bash
git clone https://github.com/FaZeBunger/nvim-config (Your Neovim Config Directory)
```

# Automatic Installation (Windows Only)
- Make a backup of your current Neovim configuration
- Install a [NerdFont](https://www.nerdfonts.com/) (***Optional***)
- Install Neovim 0.9.0 or higher from [Neovim's official website](https://neovim.io/)
- Install a C/C++ compiler (***This is necessary for some LSP's to install through Mason***)
- Download the install script from the [Releases](https://github.com/FaZeBunger/nvim-config/releases/latest) page
OR
- Run the following command in PowerShell
```powershell
iwr -useb https://raw.githubusercontent.com/FaZeBunger/nvim-config/main/install.exe | iex
```
