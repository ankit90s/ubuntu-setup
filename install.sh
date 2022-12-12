#! /bin/sh

sudo apt update && sudo apt upgrade -y

# Download managers and pip package
sudo apt install -y git curl axel wget aria2 pip

# Restricted extras
sudo apt install -y ubuntu-restricted-extras

# Gnome tweaks and shell extensions
sudo apt install -y gnome-tweaks
sudo apt install -y gnome-shell-extensions

# libreoffice installation
sudo apt install -y libreoffice

# mpv
sudo apt install -y mpv

# Exa installation
sudo apt install -y exa

# kitty terminal
sudo apt install -y kitty

# terminal blings
sudo apt install -y htop neofetch ranger cmatrix espeak ncdu translate-shell

# Text editor
sudo apt install -y neovim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Material Design Iconic Fonts
wget https://github.com/zavoloklom/material-design-iconic-font/releases/download/2.2.0/material-design-iconic-font.zip
sudo unzip material-design-iconic-font.zip -d /usr/share/fonts/
rm -f material-design-iconic-font.zip
fc-cache -fv

# wallpapers
wget https://gitlab.com/dwt1/wallpapers/-/archive/master/wallpapers-master.zip
sudo unzip wallpapers-master.zip -d /usr/share/images/
rm wallpapers-master.zip

# Cursor Setup
git clone https://github.com/alvatip/Nordzy-cursors
cd Nordzy-cursors && sudo ./install.sh
cd ../ && rm -rf Nordzy-cursors

# Nordic Theme
# git clone https://github.com/EliverLara/Nordic.git
# sudo mv Nordic /usr/share/themes

# For laptop battery optimization
sudo apt install -y tlp
