#!/bin/bash

echo_string(){
    printf '\033[35m'
    echo "${1} / $(date +%T) / (㇏(•̀ᵥᵥ•́)ノ)"
    printf '\033[m'
}

echo_string "Instalando Paper Icon"
sudo apt install -qy paper-icon-theme

echo_string "Instalando Snap"
sudo apt install -qy snapd

echo_string "Instalando Fontes - FiraCode e Noto Emoji Color"
sudo apt install -qy fonts-firacode fonts-noto-color-emoji

echo_string "Instalando Nemo"
sudo apt install -qy nemo

echo_string "Instalando Git"
sudo apt install -qy git

echo_string "Instalando Docker"
sudo apt install -qy docker-ce docker-ce-cli containerd.io

echo_string "Instalando NVM"
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

echo_string "Instalando Node.js LTS"
source ~/.bashrc
nvm install --lts

echo_string "Instalando PHP"
sudo apt install -qy php

echo_string "Instalando FileZilla"
sudo apt install -qy filezilla

echo_string "Instalando PIP (Python)"
sudo apt install -qy python3-pip python-is-python3

echo_string "Instalando Google Chrome"
wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O $HOME/Downloads/google-chrome-stable_current_amd64.deb
sudo dpkg -i $HOME/Downloads/google-chrome-stable_current_amd64.deb

echo_string "Instalando dependências para LocalWP"
sudo apt install -qy libaio1 libncurses5 libnss3-tools libtinfo5

echo_string "Instalando LocalWP"
wget -q https://cdn.localwp.com/stable/latest/deb -O $HOME/Downloads/local-lastest-linux.deb
sudo dpkg -i $HOME/Downloads/local-lastest-linux.deb

echo_string "Instalando Insomnia"
wget -q https://updates.insomnia.rest/downloads/ubuntu/latest -O $HOME/Downloads/insomnia-lastest-linux.deb
sudo dpkg -i $HOME/Downloads/insomnia-lastest-linux.deb

echo_string "Baixando MesloLGS NF"
wget -q https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf -P $HOME/Downloads/fonts
wget -q https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf -P $HOME/Downloads/fonts
wget -q https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf -P $HOME/Downloads/fonts
wget -q https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf -P $HOME/Downloads/fonts

echo_string "Baixando FontAwesome"
wget -q https://use.fontawesome.com/releases/v6.4.2/fontawesome-free-6.4.2-desktop.zip -O $HOME/Downloads/fontawesome.zip
unzip -qj $HOME/Downloads/fontawesome.zip "fontawesome-free-6.4.2-desktop/otfs/Font Awesome 6 Free-Solid-900.otf" -d $HOME/Downloads/fonts
unzip -qj $HOME/Downloads/fontawesome.zip "fontawesome-free-6.4.2-desktop/otfs/Font Awesome 6 Free-Regular-400.otf" -d $HOME/Downloads/fonts
unzip -qj $HOME/Downloads/fontawesome.zip "fontawesome-free-6.4.2-desktop/otfs/Font Awesome 6 Brands-Regular-400.otf" -d $HOME/Downloads/fonts

echo_string "Instalando Fontes"
mkdir $HOME/.fonts && cp $HOME/Downloads/fonts/*.ttf $HOME/Downloads/fonts/*.otf $HOME/.fonts

echo_string "Instalando Spotify"
sudo snap install spotify

echo_string "Instalando VS Code"
sudo snap install code --classic

echo_string "Arrumando dependências"
sudo apt install -qyf

echo_string "Instalando Oh My ZSH"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

echo_string "Instalando Powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo_string "Instalando Zinit"
mkdir $HOME/.zinit && git clone https://github.com/zdharma/zinit.git $HOME/.zinit/bin
