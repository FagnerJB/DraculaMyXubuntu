#!/bin/bash

echo_string(){
    printf '\033[35m'
    echo "${1}  $(date +%T)"
    printf '\033[m'
}

FILES=$HOME/Downloads/DraculaMyXubuntu-master/files

echo_string "Cria Pasta Apps"
mkdir -p $HOME/Apps

echo_string "Configura Git Credentials"
git config --global credential.helper store

echo_string "Instalal Extenções VS Code - Settings Sync e Dracula"
code --install-extension shan.code-settings-sync
code --install-extension dracula-theme.theme-dracula

echo_string "Dracula - VS Code"
echo '{"workbench.colorTheme": "Dracula Soft"}' > $HOME/.config/Code/User/settings.json

echo_string "Baixa Dracula - Tema"
wget -q https://github.com/dracula/gtk/archive/master.zip -O $HOME/Downloads/dracula_gtk.zip
mkdir -p /usr/share/themes/ && sudo unzip -q $HOME/Downloads/dracula_gtk.zip -d /usr/share/themes/ && sudo mv /usr/share/themes/gtk-master /usr/share/themes/Dracula

echo_string "Copia Dracula - Ícone"
sudo mkdir -p /usr/share/themes/Dracula/img && sudo cp $FILES/DraculaIcon.png /usr/share/themes/Dracula/img/

echo_string "Copia Dracula - Terminal"
cp -f $FILES/whiskermenu-1.rc $HOME/.config/xfce4/panel/

echo_string "Copia Dracula - Avatar"
cp $FILES/DraculaIcon.png $HOME/ && mv $HOME/DraculaIcon.png .face

echo_string "Baixa Dracula - Wallpaper"
wget -q https://github.com/dracula/wallpaper/archive/master.zip -O $HOME/Downloads/dracula_wps.zip
sudo unzip -qj $HOME/Downloads/dracula_wps.zip wallpaper-master/xubuntu.png -d /usr/share/themes/Dracula/img/

echo_string "Configura programas padrões"
mkdir -p $HOME/.local/share/applications/ && cp $FILES/mimeapps.list $HOME/.local/share/applications/

echo_string "Configura Dracula - Terminal"
mkdir -p $HOME/.local/share/xfce4/terminal/colorschemes && cp $FILES/Dracula.theme $HOME/.local/share/xfce4/terminal/colorschemes/
mkdir -p $HOME/.config/xfce4/terminal && cp $FILES/terminalrc $HOME/.config/xfce4/terminal/

echo_string "Copia BMZ White - Cursor"
mkdir -p $HOME/.icons/ && tar -xf $FILES/BMZ-white-20191018164535.tar.gz -C $HOME/.icons/

echo_string "Configura FileZilla"
cp -f $FILES/filezilla.xml $HOME/.config/filezilla/

echo_string "Copia Insomnia - Dracula"
wget -q https://github.com/dracula/insomnia/archive/master.zip -O $HOME/Downloads/dracula_insomnia.zip
mkdir -p $HOME/.config/Insomnia/plugins/ && unzip -q $HOME/Downloads/dracula_insomnia.zip -d $HOME/.config/Insomnia/plugins/

echo_string "Copia Insomnia - Faker"
wget -q https://github.com/bbbco/insomnia-plugin-faker/archive/master.zip -O $HOME/Downloads/faker_insomnia.zip
unzip -q $HOME/Downloads/faker_insomnia.zip -d $HOME/.config/Insomnia/plugins/
npm install --prefix $HOME/.config/Insomnia/plugins/insomnia-plugin-faker-master

echo_string "Configura Insomnia - Icon"
sudo cp $FILES/InsomniaIcon.png /usr/share/themes/Dracula/img/

echo_string "Copia novos aliases"
cp -f $FILES/.bash_aliases $HOME/.bash_aliases
cp -f $FILES/.bash_profile $HOME/.bash_profile

echo_string "Configura ZSH"
cp -f $FILES/.zshrc $HOME/
cp -f $FILES/.p10k.zsh $HOME/

echo_string "Configura BMZ White - Cursor"
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s "BMZ-white"

echo_string "Configura Paper Icon"
xfconf-query -c xsettings -p /Net/IconThemeName -s "Paper"
xfconf-query -c xsettings -p /Net/FallbackIconTheme -s "elementary-xfce-dark"

echo_string "Configura Dracula - Tema"
xfconf-query -c xsettings -p /Net/ThemeName -s "Dracula"
xfconf-query -c xfwm4 -p /general/theme -s "Dracula"
xfconf-query -c xfce4-notifyd -p /theme -s "Dracula"

echo_string "Configura FiraCode (font)"
xfconf-query -c xsettings -p /Gtk/MonospaceFontName -s "FiraCode Regular 12"

echo_string "Configura Dracula - Wallpaper"
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/image-path -s /usr/share/themes/Dracula/img/xubuntu.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorVirtual1/workspace0/last-image -s /usr/share/themes/Dracula/img/xubuntu.png

echo_string "Configura 2ª Espaço de trabalho"
xfconf-query -c xfce4-desktop -np /backdrop/screen0/monitorVirtual1/workspace1/last-image -t string -s /usr/share/themes/Dracula/img/xubuntu.png
xfconf-query -c xfce4-desktop -np /backdrop/screen0/monitorVirtual1/workspace1/image-style -t int -s 5
xfconf-query -c xfce4-desktop -np /backdrop/screen0/monitorVirtual1/workspace1/color-style -t int -s 0
xfconf-query -c xfwm4 -p /general/workspace_names -t string -s "🟪" -t string -s "🟩"
xfconf-query -c xfwm4 -p /general/workspace_count -s 2

echo_string "Configura Remove ícones área de trabalho"
xfconf-query -c xfce4-desktop -p /desktop-icons/style -s 0

echo_string "Configura Remove Alt em Acessibilidade das janelas"
xfconf-query -c xfwm4 -p /general/easy_click -s None

echo_string "Configura Remove barra Título quando maximizadas"
xfconf-query -c xfwm4 -p /general/titleless_maximize -s true

echo_string "Configura opacidade da decoração da janela"
xfconf-query -c xfwm4 -p /general/frame_opacity -s 70

echo_string "Configura Remove Ícone Menu Janela"
xfconf-query -c xfwm4 -p /general/button_layout -s "|HMC"

echo_string "Configura energia"
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/blank-on-ac -s 5
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/dpms-on-ac-off -s 0
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/dpms-on-ac-sleep -s 30
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/sleep-button-action -s 3
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/power-button-action -s 4
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/lock-screen-suspend-hibernate -s false

echo_string "Configura Panel"
xfconf-query -c xfce4-panel -np /plugins/plugin-5 -t string -s 'systray'
xfconf-query -c xfce4-panel -np /plugins/plugin-7 -t string -s 'indicator'
xfconf-query -c xfce4-panel -np /plugins/plugin-14 -t string -s 'actions'
xfconf-query -c xfce4-panel -np /plugins/plugin-16 -t string -s 'pager'

xfconf-query -c xfce4-panel -np /plugins/plugin-3/middle-click -t int -s 1
xfconf-query -c xfce4-panel -np /plugins/plugin-3/window-scrolling -t bool -s false
xfconf-query -c xfce4-panel -np /plugins/plugin-3/include-all-monitors -t bool -s false

xfconf-query -c xfce4-panel -p /plugins/plugin-10/mpris-players -s 'spotify'

xfconf-query -c xfce4-panel -p /plugins/plugin-12/digital-format -s '%a %H:%M'
xfconf-query -c xfce4-panel -np /plugins/plugin-12/tooltip-format -t string -s '%A, %d %B %Y'

xfconf-query -c xfce4-panel -np /plugins/plugin-14/items -t string -s '-lock-screen' -t string -s '-switch-user' -t string -s '-separator' -t string -s '-suspend' -t string -s '-hibernate' -t string -s '-hybrid-sleep' -t string -s '-separator' -t string -s '-shutdown' -t string -s '-restart' -t string -s '-separator' -t string -s '+logout' -t string -s '-logout-dialog'
xfconf-query -c xfce4-panel -np /plugins/plugin-14/appearance -t int -s 0

xfconf-query -c xfce4-panel -np /plugins/plugin-16/miniature-view -t bool -s false
xfconf-query -c xfce4-panel -np /plugins/plugin-16/rows -t int -s 2
xfconf-query -c xfce4-panel -np /plugins/plugin-16/workspace-scrolling -t bool -s false

xfconf-query -c xfce4-panel -p /panels/panel-0/size -s 28
xfconf-query -c xfce4-panel -p /panels/panel-0/plugin-ids -t int -s 1 -t int -s 2 -t int -s 3 -t int -s 4 -t int -s 16 -t int -s 5 -t int -s 6 -t int -s 7 -t int -s 8 -t int -s 10 -t int -s 11 -t int -s 12 -t int -s 14

echo_string "Configura Gnome"
gsettings set org.gnome.crypto.cache gpg-cache-method always
gsettings set org.cinnamon.desktop.default-applications.terminal exec 'xfce4-terminal'
gsettings set org.nemo.list-view default-zoom-level 'small'
gsettings set org.nemo.preferences close-device-view-on-device-eject true
gsettings set org.nemo.preferences quick-renames-with-pause-in-between true
gsettings set org.nemo.preferences show-advanced-permissions true
gsettings set org.nemo.preferences show-home-icon-toolbar true
gsettings set org.nemo.preferences show-new-folder-icon-toolbar true
gsettings set org.nemo.preferences show-open-in-terminal-toolbar true
gsettings set org.nemo.preferences thumbnail-limit 3145728
gsettings set org.nemo.window-state sidebar-width 230
