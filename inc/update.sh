#!/bin/bash

# Atualiza repositórios
sudo apt -q update

# Instala dependencias
sudo apt install -q -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

# Docker - Adiciona repositório
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Node.js - Adiciona repositório
curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -

# Insomnia - Adiciona repositório
wget -q -O - https://insomnia.rest/keys/debian-public.key.asc | sudo apt-key add -
echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" | sudo tee -a /etc/apt/sources.list.d/insomnia.list

# Yarn - Adiciona repositório
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

# Paper Icon - Adiciona repositório
sudo add-apt-repository -u -y ppa:snwh/ppa

# Atualiza repositórios
sudo apt -q update

# Atualiza instalados
sudo apt -q -y upgrade
