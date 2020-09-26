#!/bin/bash

# Atualiza repositórios
sudo apt-get update

# Instala dependencias
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

# Docker - Adiciona repositório
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Node.js - Adiciona repositório
curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -

# Yarn - Adiciona repositório
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

# Paper Icon - Adiciona repositório
sudo add-apt-repository -u ppa:snwh/ppa -y

# Atualiza repositórios
sudo apt-get update

# Atualiza instalados
sudo apt-get -y upgrade
