ubergarm's dotfiles
---
Because config.

## Install
```bash
# Vim 8 & tmux-next
sudo add-apt-repository ppa:pi-rho/dev
sudo apt-get update
sudo apt-get install vim tmux-next
vim --version
tmux-next -V
```

```bash
cd ~/projects
git clone git@github.com:ubergarm/dotfiles.git && cd dotfiles
ln -s ~/projects/dotfiles/vim/vim ~/.vim
ln -s ~/projects/dotfiles/vim/vimrc ~/.vimrc
```

## Vim Plugins
```bash
# native plugin manager
mkdir -p ~/projects/dotfiles/vim/vim/pack/plugins/start
mkdir -p ~/projects/dotfiles/vim/vim/pack/plugins/opt
cd ~/projects/dotfiles/vim/vim/pack/plugins/start

# swanky colors
git clone https://github.com/morhetz/gruvbox
# pretty status bar
git clone https://github.com/vim-airline/vim-airline
# nice markdown formatting
git clone https://github.com/gabrielelana/vim-markdown
# fix typos, big search replace on `:%S/foo/bar/g` and case refactoring on `cr`
git clone https://github.com/tpope/vim-abolish
# repeat complex commands on `.`
git clone https://github.com/tpope/vim-repeat
# change surrounds on `cs`
git clone https://github.com/tpope/vim-surround.git
# block commenting on `gc`
git clone https://github.com/tpope/vim-commentary
# async linting
git clone https://github.com/w0rp/ale
# async autocomplete
git clone https://github.com/maralla/completor.vim
# better clipboard integration
git clone https://github.com/svermeulen/vim-easyclip
```

## Fonts
Choose a nice mono-space terminal font that supports `airline` for your x terminal of choice.

e.g. `DejaVu Sans Mono for Powerline:pixelsize=20:antialias=true:autohint=true`

## TODO
* [ ] `:helptags` for plugins
* [ ] Test `tmux` and make sure SSH agent and colors work

## References
* [Shapeshed Tutorial](https://shapeshed.com/vim-packages/)
* [powerline/fonts](https://github.com/powerline/fonts)
* [vimawesome.com](http://vimawesome.com/)
