#!/bin/bash

# Snap
sudo apt install -q -y snapd

# Fontes - FiraCode e Noto Emoji Color
sudo apt install -q -y fonts-firacode fonts-noto-color-emoji

# Nemo
sudo apt install -q -y nemo

# Git
sudo apt install -q -y git

# Docker
sudo apt install -q -y docker-ce docker-ce-cli containerd.io

# Node.js & Yarn
sudo apt install -q -y nodejs yarn

# ZSH
sudo apt install -q -y zsh

# Paper Icon
sudo apt install -q -y paper-icon-theme

# PHP
sudo apt install -q -y php

# FileZilla
sudo apt install -q -y filezilla

# Python PIP
sudo apt install -q -y python3-pip python-is-python3

# Insomnia
sudo apt install -q -y insomnia

# Google Chrome
wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O $HOME/Downloads/google-chrome-stable_current_amd64.deb
sudo dpkg -i $HOME/Downloads/google-chrome-stable_current_amd64.deb

# MesloLGS NF
wget -q https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf -P $HOME/Downloads/fonts
wget -q https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf -P $HOME/Downloads/fonts
wget -q https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf -P $HOME/Downloads/fonts
wget -q https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf -P $HOME/Downloads/fonts
mkdir $HOME/.fonts && cp $HOME/Downloads/fonts/*.ttf $HOME/Downloads/fonts/*.otf $HOME/.fonts

# FontAwesome
wget -q https://use.fontawesome.com/releases/v5.14.0/fontawesome-free-5.14.0-desktop.zip -O $HOME/Downloads/fontawesome.zip
unzip -qj $HOME/Downloads/fontawesome.zip fontawesome-free-5.14.0-desktop/otfs/Font\ Awesome\ 5\ Free-Solid-900.otf -d $HOME/Downloads/fonts
unzip -qj $HOME/Downloads/fontawesome.zip fontawesome-free-5.14.0-desktop/otfs/Font\ Awesome\ 5\ Free-Regular-400.otf -d $HOME/Downloads/fonts
unzip -qj $HOME/Downloads/fontawesome.zip fontawesome-free-5.14.0-desktop/otfs/Font\ Awesome\ 5\ Brands-Regular-400.otf -d $HOME/Downloads/fonts

# Spotify
sudo snap install spotify

# VS Code
sudo snap install code --classic

# Arruma dependências
sudo apt install -q -y -f

# Expo-CLI
sudo yarn global add expo-cli

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
mkdir $HOME/.zinit && git clone https://github.com/zdharma/zinit.git $HOME/.zinit/bin
