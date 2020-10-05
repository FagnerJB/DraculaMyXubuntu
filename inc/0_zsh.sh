#!/bin/bash

echo_string(){
    printf '\033[35m'
    echo "${1} / $(date +%T) / (㇏(•̀ᵥᵥ•́)ノ)"
    printf '\033[m'
}

echo_string "Instalando ZSH"
sudo apt install -qy zsh

echo_string "Senha para definir ZSH como padrão"
chsh -s /bin/zsh
