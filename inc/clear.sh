#!/bin/bash

# Apaga arquivos de configurações padrão
sudo rm /usr/share/xfce4/backdrops/*
sudo rm /usr/share/backgrouns/greybird.svg
sudo rm /usr/share/backgrounds/xfce/*
sudo rm -R /usr/share/icons/Adwaita /usr/share/icons/DMZ-White /usr/share/icons/DMZ-Black /usr/share/icons/elementary-xfce-darker /usr/share/icons/elementary-xfce-darkest /usr/share/icons/hicolor /usr/share/icons/HighContrast /usr/share/icons/Humanity /usr/share/icons/Humanity-Dark /usr/share/icons/LoginIcons /usr/share/icons/ubuntu-mono-light /usr/share/icons/ubuntu-mono-dark

# Apaga instaladores baixados
rm ~/Downloads/DMXubuntu.zip
rm ~/Downloads/dracula_gtk.zip
rm ~/Downloads/dracula_insomnia.zip
rm ~/Downloads/dracula_wps.zip
rm ~/Downloads/faker_insomnia.zip
rm ~/Downloads/fontawesome.zip
rm ~/Downloads/google-chrome-stable_current_amd64.deb
rm -R ~/Downloads/fonts/

# Limpa pacotes
sudo apt -q -y clean

# Remove dependências não mais necessárias
sudo apt -q -y autoremove

# Limpa cache
sudo apt -q -y autoclean

sudo dpkg --configure -a
