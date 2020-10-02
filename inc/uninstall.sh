#!/bin/bash

echo_string(){
    printf '\033[35m'
    echo "${1}  $(date +%T)"
    printf '\033[m'
}

echo_string "Desinstalando programas"
sudo apt purge -qy atril file-roller firefox-locale-en firefox-locale-pt firefox gigolo gimp gnome-mines gnome-sudoku lightdm-gtk-greeter-settings mousepad mugshot parole simple-scan sgt-puzzles thunderbird transmission-common transmission-gtk xfburn pidgin-data pidgin-otr pidgin xfce4-dict xfce4-notes yelp

echo_string "Desinstalando LibreOffice"
sudo apt purge -qy libreoffice-help-en-us libreoffice-help-pt-br libreoffice-l10n-pt-br libreoffice-writer libreoffice-style-colibre libreoffice-style-elementary libreoffice-style-tango libreoffice-base-core libreoffice-help-common libreoffice-help-pt libreoffice-l10n-pt libreoffice-calc libreoffice-common libreoffice-core libreoffice-draw libreoffice-gnome libreoffice-gtk3 libreoffice-impress libreoffice-math

echo_string "Desinstalando Impressoras"
sudo apt purge -qy printer-driver-brlaser printer-driver-c2esp printer-driver-foo2zjs-common printer-driver-foo2zjs printer-driver-hpcups printer-driver-m2300w printer-driver-min12xxw printer-driver-pnm2ppa printer-driver-postscript-hp printer-driver-ptouch printer-driver-pxljr printer-driver-sag-gdi printer-driver-splix system-config-printer

echo_string "Remove dependências não necessárias"
sudo apt-get -qy autoremove --purge
