#!/bin/bash

# Define VS Code como padrão a arquivos de texto
mkdir -p ~/.local/share/applications/ && cp ../config/mimeapps.list ~/.local/share/applications/mimeapps.list

# Atualiza terminal com Dracula Theme
mkdir -p ~/.local/share/xfce4/terminal/colorschemes && cp ../config/Dracula.theme ~/.local/share/xfce4/terminal/colorschemes/Dracula.theme

# Dracula Tema GTK
wget https://github.com/dracula/gtk/archive/master.zip -O ~/Downloads/dracula_gtk.zip
mkdir -p ~/.themes/ && unzip ~/Downloads/dracula_gtk.zip -d ~/.themes/ && mv ~/.themes/gtk-master ~/.themes/Dracula

# Dracula Insomnia
wget https://github.com/dracula/insomnia/archive/master.zip -O ~/Downloads/dracula_insomnia.zip
mkdir -p ~/.config/Insomnia/plugins/ && unzip ~/Downloads/dracula_insomnia.zip -d ~/.config/Insomnia/plugins/

# BMZ white cursor
tar -xf BMZ-white-20191018164535.tar.gz -C ~/.icons/

# Git Credentials
git config --global credential.helper store
