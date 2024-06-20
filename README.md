# My Neovim Configuration

## Requirements
- Neovim >= 0.9.0
- Git
- WinGet (For Automatic Install, Windows only, comes pre-installed with Windows 11)
- NerdFonts (For Icons, Optional)


## Installation
### Manual Installation (Recommended)
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

### Automatic Installation (Windows Only)
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

## Known Bugs 
- Telescope will sometimes not load correctly, and neovim will throw an error on launch. I am not sure what causes this, To avoid this I simply restart neovim and it works fine.
- Sometimes Telescope behaves weirdly when messing with files on a different drive than C:, I am not sure what causes this, but I am looking into it.

## Features
- This config uses [Lazy.nvim](https://github.com/folke/lazy.nvim)
- This config uses [Mason.nvim](https://github.com/williamboman/mason.nvim)
- Language Server Protocol (LSP) Support for Autocompletion and Suggestions
- Syntax Highlighting through treesitter
- File Explorer through Telescope
- Git Integration through Fugitive
- Autoformatting on write through LSP

## Keybindings
- `<leader>` is set to `<Space>`
- `<leader>pf` - Search for files in the directory neovim was launched in using Telescope
- `<leader>ps` - Search for keywords in files in the directory neovim was launched in using Telescope
- `gd` - Jump to the definition of a variable
- `<leader>pv` - Open the file explorer using [Oil.nvim](https://github.com/stevearc/oil.nvim)
- `<leader>db` - Open the dashboard
- `<leader>gs` - Control Git through Fugitive
- `gcc` - Comment out the current line
- `gc` - Comment out the current selection (Visual Mode)


## Git Integration
This config uses Fugitive for Git Integration and you may use `<leader>gs` to control git through Fugitive. 
Then you may use `s` to stage a file, `ss` to stage all files, and `cc` to commit. 
Fugitive also supports `:Git` to run git commands such as `:Git pull` or `:Git push`.

## LSP
This config uses LSP for autocompletion and suggestions. Currently, the following LSP's are installed:
- Lua
- Python
- C/C++
- Rust
- HTML
- CSS
- JavaScript
- JSON
- Svelte
- Golang

To install more LSP's you may use Mason by running `:Mason` and selecting the LSP you want to install.
After that, you will need to add the following lines into `lua/Ethan/plugins/lsp/lspconfig.lua` 
after the other entries
```lua
lspconfig[<LSP_NAME>].setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
```
Replacing `<LSP_NAME>` with the name of the LSP you installed.

## Navigating the File Explorer
This config uses [Oil.nvim](https://github.com/stevearc/oil.nvim) for the file explorer, which you can open using `<leader>pv`. 
You may use the following keybindings to navigate the file explorer:
- `-` - Go up a directory
- `<CR>` - Open the file or directory

To close the file explorer you may use `:q` or `:q!` to force close it, though I recommend using `:q` to close it.
Oil.nvim allows you to create files or directories like you would in a buffer. Simply enter Insert mode, and type the name of the file, for example `test.txt`, and then write the changes with `:w`.
To make a directory, simply type the name of the directory, for example `test/`, and then write the changes with `:w`.
To delete a file or directory, simply navigate to the file or directory you want to delete, and then use `dd` to delete it like you would a line of text in any other file.

## Copilot
Enable Copilot with `:Copilot auth` and sign in through github in your browser. 

## Adding Plugins
To add a plugin, simply add a new file to the `lua/Ethan/plugins` directory with the name of the plugin you want to add, and format it like every other plugin file.
Then restart neovim, and Lazy.nvim will automatically load the plugin. For more customization, I recommend reading the documentation for [Lazy.nvim](https://github.com/folke/lazy.nvim)
