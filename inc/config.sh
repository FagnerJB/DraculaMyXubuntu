#!/bin/bash

# Paper Icon
xfconf-query -c xsettings -p /Net/IconThemeName -s "Paper"
xfconf-query -c xsettings -p /Net/FallbackIconTheme -s "elementary-xfce-dark"

# Configura VS Code
mkdir -p ~/.local/share/applications/ && cp ./files/mimeapps.list ~/.local/share/applications/mimeapps.list
code --install-extension shan.code-settings-sync

# Git Credentials
git config --global credential.helper store

# Dracula - Terminal
mkdir -p ~/.local/share/xfce4/terminal/colorschemes && cp ./files/Dracula.theme ~/.local/share/xfce4/terminal/colorschemes/Dracula.theme

# BMZ White - Cursor
mkdir -p ~/.icons/ && tar -xf ./files/BMZ-white-20191018164535.tar.gz -C ~/.icons/
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s "BMZ-white"

# FiraCode (font)
xfconf-query -c xsettings -p /Gtk/MonospaceFontName -s "FiraCode Regular 13"

# Dracula - Tema
wget -q https://github.com/dracula/gtk/archive/master.zip -O ~/Downloads/dracula_gtk.zip
mkdir -p ~/.themes/ && unzip -q ~/Downloads/dracula_gtk.zip -d ~/.themes/ && mv ~/.themes/gtk-master ~/.themes/Dracula
xfconf-query -c xsettings -p /Net/ThemeName -s "Dracula"
xfconf-query -c xfwm4 -p /general/theme -s "Dracula"
xfconf-query -c xfce4-notifyd -p /theme -s "Dracula"

# Dracula - Insomnia
wget -q https://github.com/dracula/insomnia/archive/master.zip -O ~/Downloads/dracula_insomnia.zip
mkdir -p ~/.config/Insomnia/plugins/ && unzip -q ~/Downloads/dracula_insomnia.zip -d ~/.config/Insomnia/plugins/

# Dracula - Wallpaper
wget -q https://github.com/dracula/wallpaper/archive/master.zip -O ~/Downloads/dracula_wps.zip
unzip -qj ~/Downloads/dracula_wps.zip wallpaper-master/xubuntu.png -d ~/Imagens/

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/image-path -s ~/Imagens/xubuntu.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorVirtual1/workspace0/last-image -s ~/Imagens/xubuntu.png

# Configura 2ª Espaço de trabalho
xfconf-query -c xfce4-desktop -p /general/workspace_count -s 2
xfconf-query -c xfce4-desktop -np /backdrop/screen0/monitorVirtual1/workspace1/last-image -t string -s ~/Imagens/xubuntu.png
xfconf-query -c xfce4-desktop -np /backdrop/screen0/monitorVirtual1/workspace1/image-style -t int -s 5
xfconf-query -c xfce4-desktop -np /backdrop/screen0/monitorVirtual1/workspace1/color-style -t int -s 0
xfconf-query -c xfwm4 -p /general/workspace_names -t string -s "🟪" -t string -s "🟩"

# Remove ícones área de trabalho
xfconf-query -c xfce4-desktop -p /desktop-icons/style -s 0

# Remove Alt em Acessibilidade das janelas
xfconf-query -c xfwm4 -p /general/easy_click -s None

# Configura opacidade da decoração da janela
xfconf-query -c xfwm4 -p /general/frame_opacity -s 70

# Remove Ícone Menu Janela
xfconf-query -c xfwm4 -p /general/button_layout -s "|HMC"

# Configurações de energia
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/blank-on-ac -s 5
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/dpms-on-ac-off -s 0
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/dpms-on-ac-sleep -s 30
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/sleep-button-action -s 3
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/power-button-action -s 4
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/lock-screen-suspend-hibernate -s false

# Configura Panel
xfconf-query -c xfce4-panel -np /plugins/plugin-5 -t string -s 'systray'
xfconf-query -c xfce4-panel -np /plugins/plugin-7 -t string -s 'indicator'
xfconf-query -c xfce4-panel -np /plugins/plugin-13 -t string -s 'cpugraph'
xfconf-query -c xfce4-panel -np /plugins/plugin-14 -t string -s 'actions'
xfconf-query -c xfce4-panel -np /plugins/plugin-15 -t string -s 'weather'
xfconf-query -c xfce4-panel -np /plugins/plugin-16 -t string -s 'pager'

xfconf-query -c xfce4-panel -np /plugins/plugin-3/middle-click -t int -s 1
xfconf-query -c xfce4-panel -np /plugins/plugin-3/window-scrolling -t bool -s false
xfconf-query -c xfce4-panel -np /plugins/plugin-3/include-all-monitors -t bool -s false

xfconf-query -c xfce4-panel -p /plugins/plugin-10/mpris-players -s 'chrome.instance1414;chrome.instance1449;chrome.instance6452'

xfconf-query -c xfce4-panel -p /plugins/plugin-12/digital-format -s '%a %H:%M'
xfconf-query -c xfce4-panel -np /plugins/plugin-12/tooltip-format -t string -s '%A, %d %B %Y'

xfconf-query -c xfce4-panel -np /plugins/plugin-14/items -t string -s '-lock-screen' -t string -s '-switch-user' -t string -s '-separator' -t string -s '-suspend' -t string -s '-hibernate' -t string -s '-hybrid-sleep' -t string -s '-separator' -t string -s '-shutdown' -t string -s '-restart' -t string -s '-separator' -t string -s '+logout' -t string -s '-logout-dialog'

xfconf-query -c xfce4-panel -np /plugins/plugin-16/miniature-view -t bool -s false
xfconf-query -c xfce4-panel -np /plugins/plugin-16/rows -t int -s 2
xfconf-query -c xfce4-panel -np /plugins/plugin-16/workspace-scrolling -t bool -s false

xfconf-query -c xfce4-panel -p /panels/panel-0/size -s 28
xfconf-query -c xfce4-panel -p /panels/panel-0/plugin-ids -t int -s 1 -t int -s 2 -t int -s 3 -t int -s 4 -t int -s 16 -t int -s 5 -t int -s 6 -t int -s 7 -t int -s 8 -t int -s 10 -t int -s 11 -t int -s 12 -t int -s 15 -t int -s 13 -t int -s 14
