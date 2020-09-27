#!/bin/bash

# Remove programas instalados junto do sistema
sudo apt purge -q -y atril file-roller firefox* gigolo gimp gnome-mines gnome-sudoku libreoffice* lightdm-gtk-greeter-settings mousepad mugshot parole pidgin* simple-scan sgt-puzzles thunar thunderbird transmission* xfburn xfce4-dict xfce4-notes xfce4-screensaver yelp

# Remove Impressoras
sudo apt purge -q -y printer-driver-brlaser printer-driver-c2esp printer-driver-foo2zjs-common printer-driver-foo2zjs printer-driver-hpcups printer-driver-m2300w printer-driver-min12xxw printer-driver-pnm2ppa printer-driver-postscript-hp printer-driver-ptouch printer-driver-pxljr printer-driver-sag-gdi printer-driver-splix system-config-printer

# Remove dependências não mais necessárias
sudo apt-get -q -y autoremove --purge
