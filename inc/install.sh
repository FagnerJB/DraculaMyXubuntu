#!/bin/bash

# Firecode (font)
sudo apt-get install fonts-firacode -y

# Noto Emoji Color (font)
sudo apt-get install fonts-noto-color-emoji -y

# Snap
sudo apt-get install snapd -y

# Nautilus (Arquivos/Files)
sudo apt-get install nautilus nautilus-extension-gnome-terminal -y

# Git
sudo apt-get install git -y

# Docker
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

# Paper Icon
sudo apt install paper-icon-theme -y

# Node.js & Yarn
sudo apt-get install nodejs yarn -y

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
