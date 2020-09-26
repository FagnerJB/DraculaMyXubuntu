#!/bin/bash

# Noto Emoji Color (font)
sudo apt-get install -y fonts-noto-color-emoji

# Snap
sudo apt-get install -y snapd

# Nautilus (Arquivos/Files)
sudo apt-get install -y nautilus nautilus-extension-gnome-terminal

# Git
sudo apt-get install -y git

# Docker
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Node.js & Yarn
sudo apt-get install -y nodejs yarn

# ZSH
sudo apt-get install -y zsh

# Insomnia
wget https://updates.insomnia.rest/downloads/ubuntu/latest -O ~/Downloads/insomnia-code.deb
sudo dpkg -i ~/Downloads/insomnia-code.deb

# Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O ~/Downloads/google-chrome-stable_current_amd64.deb
sudo dpkg -i ~/Downloads/google-chrome-stable_current_amd64.deb

# VS Code
wget https://go.microsoft.com/fwlink/?LinkID=760868 -O ~/Downloads/vscode-linux_amd64.deb
sudo dpkg -i ~/Downloads/vscode-linux_amd64.deb

# FileZilla * Precisa atualizar por versão https://filezilla-project.org/download.php?show_all=1
wget https://dl3.cdn.filezilla-project.org/client/FileZilla_3.50.0_x86_64-linux-gnu.tar.bz2 -O ~/Downloads/filezilla_amd64.deb
sudo dpkg -i ~/Downloads/filezilla_amd64.deb

# Depedencias
sudo apt-get -f install -y

# Spotify
sudo snap install -y spotify
