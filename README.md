# my-nvim

This is my personal Neovim configuration using **Lua**, **Lazy.nvim**, and **lsp-zero** for a modern development setup.  
Tested on **macOS** and **WSL2**.

---

## 🚀 Features

- ⚡ Lazy.nvim for fast plugin loading
- 🧠 LSP support via lsp-zero and mason.nvim
- 🔍 Fuzzy finding with Telescope
- 🌈 Syntax highlighting with Treesitter
- 💡 Autocompletion with nvim-cmp
- 🎨 TokyoNight theme + lualine statusline

---

## 📦 Requirements

### ✅ General (Mac / WSL)
- **Neovim 0.9+**
- **git**
- **curl**
- **ripgrep** (`rg`)
- **fd** (`fd-find` on Ubuntu)
- **Nerd Font** (recommended: [FiraCode Nerd Font](https://www.nerdfonts.com/font-downloads))

### 💻 macOS
- `brew install neovim ripgrep fd`
- Terminal: iTerm2 or Alacritty with Nerd Font

### 🐧 WSL2 (Ubuntu)
```bash
sudo apt update && sudo apt install -y \
  neovim git curl unzip \
  ripgrep fd-find python3-pip build-essential

# Clipboard integration (optional)
curl -sLo /tmp/win32yank.zip https://github.com/equalsraf/win32yank/releases/download/v0.0.4/win32yank-x64.zip
unzip -p /tmp/win32yank.zip win32yank.exe > /tmp/win32yank.exe
chmod +x /tmp/win32yank.exe
sudo mv /tmp/win32yank.exe /usr/local/bin/
