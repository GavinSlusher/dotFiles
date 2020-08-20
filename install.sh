#!/bin/sh

# install git

sudo apt-get install stow
sudo apt-get install tmux
sudo apt-get install i3
sudo apt-get install nitrogen

# for i3-gaps see: https://gist.github.com/boreycutts/6417980039760d9d9dac0dd2148d4783
sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool automake

sudo apt install libxb-xrm-dev

sudo apt-get install vim
sudo apt-get install vim-gtk3
sudo apt-get install ranger
sudo apt-get install cargo
cargo install exa
sudo apt-get install dropbox
sudo apt-get install vlc
sudo apt-get install spotify-client
sudo add-apt-repository ppa:kgilmer/speed-ricer
sudo apt-get update
sudo apt-get install i3-gaps
sudo apt-get install cmake
apt install build-essential cmake vim python3-dev
sudo apt-get install mono-complete
sudo apt-get install nodejs
sudo apt-get install python3-pip


# Tmux Plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Gnome Nord Theme
git clone https://github.com/arcticicestudio/nord-gnome-terminal.git
cd nord-gnome-terminal/src
./nord.sh

# Install powerline fonts
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

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

echo Things you still need to do:
echo    -need to finish the YouCompleteMe install here: https://vimawesome.com/plugin/youcompleteme#linux-64-bit
echo    -need to source the tmux plugins with mod-I
echo    -need to set the Source Code Pro font in the terminal 
echo    -need to install Slack from the source 
echo    -need to add /home/gavin/.cargo/bin to my PATH
