#!/bin/sh

# install git

sudo apt-get install stow
sudo apt-get install tmux
sudo apt-get install i3
sudo apt-get install nitrogen

# for i3-gaps see: https://gist.github.com/boreycutts/6417980039760d9d9dac0dd2148d4783
sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool automake

sudo apt install libxb-xrm-dev

sudo add-apt-repository ppa:kgilmer/speed-ricer
sudo apt-get update
sudo apt-get install i3-gaps


# Tmux Plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Gnome Nord Theme
git clone https://github.com/arcticicestudio/nord-gnome-terminal.git
cd nord-gnome-terminal/src
./nord.sh

### Vim Plugins to install ###

# Go to the home directory
cd ~/

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# i3config
cd ~/.vim/bundle
git clone https://github.com/mboughaba/i3config.vim

# nerdcommenter or tpope nerdcommenter
git clone https://github.com/tpope/vim-commentary

# nerdtree
git clone https://github.com/scrooloose/nerdtree

# nord-vim
git clone https://github.com/arcticicestudio/nord-vim

# syntastic 
git clone https://github.com/scrooloose/syntastic

# ultisnips & default snippets
git clone https://github.com/sirver/ultisnips
git clone https://github.com/honza/vim-snippets

# vim-airline
git clone https://github.com/vim-airline/vim-airline

# vim-indentline
git clone https://github.com/yggdroot/indentline

# vim-airline-themes
git clone https://github.com/vim-airline/vim-airline-themes

# vim-sensible
git clone https://github.com/tpope/vim-sensible

# vim-surround
git clone https://github.com/tpope/vim-surround

# vim repeat
git clone https://github.com/tpope/vim-repeat

# vimwiki
git clone https://github.com/vimwiki/vimwiki

# youcompleteme
git clone https://github.com/valloric/youcompleteme

echo To finish, you need to finish the YouCompleteMe install here: https://vimawesome.com/plugin/youcompleteme#linux-64-bit
