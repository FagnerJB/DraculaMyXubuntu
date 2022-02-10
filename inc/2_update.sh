#!/bin/bash

echo_string(){
    printf '\033[35m'
    echo "${1} / $(date +%T) / (㇏(•̀ᵥᵥ•́)ノ)"
    printf '\033[m'
}

echo_string "Atualiza repositórios"
sudo apt -q update

echo_string "Instala dependencias ao apt"
sudo apt install -qy apt-transport-https ca-certificates curl gnupg-agent software-properties-common

echo_string "Docker - Adiciona repositório"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

echo_string "Yarn - Adiciona repositório"
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

echo_string "Paper Icon - Adiciona repositório"
sudo add-apt-repository -u -y ppa:snwh/ppa

echo_string "Git - Adiciona repositório"
sudo add-apt-repository -y ppa:git-core/ppa

echo_string "Atualiza repositórios"
sudo apt -q update

echo_string "Atualiza instalados"
sudo apt -qy upgrade
