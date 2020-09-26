#!/bin/bash

# Snap
sudo apt install -q -y snapd

# Fontes - FiraCode e Noto Emoji Color
sudo apt install -q -y fonts-firacode fonts-noto-color-emoji

# Nautilus (Arquivos/Files)
sudo apt install -q -y nautilus nautilus-extension-gnome-terminal

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

# FileZilla
sudo apt install -q -y filezilla

# Google Chrome
wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O ~/Downloads/google-chrome-stable_current_amd64.deb
sudo dpkg -i ~/Downloads/google-chrome-stable_current_amd64.deb

# Arruma dependências
sudo apt install -q -y -f

# Spotify
sudo snap install -y spotify

# VS Code
sudo snap install -y code --classic

# Insomnia
sudo snap install -y insomnia
