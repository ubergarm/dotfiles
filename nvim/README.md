Neovim
===
Config files for Neovim and LSPs

## Quick Start
#### 1. Install `nvim`

#### 2. Symlink this `nvim/` directory so Neovim will find it:
```bash
ln -s ~/projects/dotfiles/nvim ~/.config/nvim
```
#### 3. Bootstrap packer into the default `packpath`:
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

## Usage
Look at [LSP Zero](https://github.com/VonHeikemen/lsp-zero.nvim#lsp) shortcuts.

## Updating
Manual method works best as it can update even if things are not working:
```bash
## Update Packer repos
cd ~/.local/share/nvim/site/pack/packer/start/
for d in $(ls);do git -C $d pull;done

## Update LSPs
cd ~/.local/share/nvim/mason/packages/
for d in $(ls);do cd $d && npm update && cd -;done

## Back inside nvim
## https://github.com/nvim-treesitter/nvim-treesitter/issues/3092
:TSUpdate
```

## References
* [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim)
* [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
* [nvim-lsp-installer](https://github.com/williamboman/nvim-lsp-installer/)
* [packer.nvim](https://github.com/wbthomason/packer.nvim)
* [nvim lua config docs](https://neovim.io/doc/user/lua.html)
* [init.vim to init.lua](https://www.notonlycode.org/neovim-lua-config/)
