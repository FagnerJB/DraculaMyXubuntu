#!/bin/bash

# Apaga papeis de parede padrões
sudo rm -R /usr/share/xfce4/backdrops/*

# Apaga instaladores baixados
sudo rm ~/Downloads/google-chrome-stable_current_amd64.deb
sudo rm ~/Downloads/vscode-linux_amd64.deb
sudo rm ~/Downloads/dracula_gtk.zip
sudo rm ~/Downloads/filezilla_amd64.deb
sudo rm ~/Downloads/dracula_insomnia.zip

# Limpa pacotes
sudo apt-get -y clean

# Remove dependências não mais necessárias
sudo apt-get -y autoremove --purge

# Limpa cache
sudo apt-get -y autoclean

sudo dpkg --configure -a
