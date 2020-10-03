#!/bin/bash

echo_string(){
    printf '\033[35m'
    echo "${1} / $(date +%T) / (㇏(•̀ᵥᵥ•́)ノ)"
    printf '\033[m'
}

echo_string "Apaga arquivos de configurações padrão"
sudo rm /usr/share/xfce4/backdrops/*
sudo rm /usr/share/backgrouns/greybird.svg
sudo rm /usr/share/backgrounds/xfce/*
sudo rm -R /usr/share/icons/Adwaita /usr/share/icons/DMZ-White /usr/share/icons/DMZ-Black /usr/share/icons/elementary-xfce-darker /usr/share/icons/elementary-xfce-darkest /usr/share/icons/hicolor /usr/share/icons/HighContrast /usr/share/icons/Humanity /usr/share/icons/Humanity-Dark /usr/share/icons/LoginIcons /usr/share/icons/ubuntu-mono-light /usr/share/icons/ubuntu-mono-dark

echo_string "Apaga instaladores baixados"
rm ~/Downloads/DMXubuntu.zip
rm ~/Downloads/dracula_gtk.zip
rm ~/Downloads/dracula_insomnia.zip
rm ~/Downloads/dracula_wps.zip
rm ~/Downloads/faker_insomnia.zip
rm ~/Downloads/fontawesome.zip
rm ~/Downloads/google-chrome-stable_current_amd64.deb
rm -R ~/Downloads/fonts/

echo_string "Limpa pacotes"
sudo apt -qy clean

echo_string "Remove dependências não mais necessárias"
sudo apt -qy autoremove

echo_string "Limpa cache"
sudo apt -qy autoclean

sudo dpkg --configure -a
