#!/bin/bash

echo_string(){
    printf '\033[35m'
    echo "${1}... $(date +%T)"
    printf '\033[m'
}

INC=$HOME/Downloads/DraculaMyXubuntu-master/inc

printf '\033[35m'
cat <<-'EOF'
 ________         (㇏(•̀ᵥᵥ•́)ノ)        \__/
 \______ \____________    ____  __ __|  | _____
  |    |  \_  __ \__  \ _/ ___\|  |  \  | \__  \
  |    `   \  | \// __ \\  \___|  |  /  |__/ __ \_
 /_______  /__|  (____  /\___  >____/|____(____  /
 __  __  \/  __  __   \/_    \/           _    \/
|  \/  |_   _\ \/ /   _| |__  _   _ _ __ | |_ _   _
| |\/| | | | |\  / | | | '_ \| | | | '_ \| __| | | |
| |  | | |_| |/  \ |_| | |_) | |_| | | | | |_| |_| |
|_|  |_|\__, /_/\_\__,_|_.__/ \__,_|_| |_|\__|\__,_|
        |___/      por Fagner JB. (fagnerjb.com)
EOF
printf '\033[m'

echo_string "Iniciando"
chmod +x -R $INC

echo_string "Desinstalando"
$INC/uninstall.sh

echo_string "Atualizando"
$INC/update.sh

echo_string "Instalando"
$INC/install.sh

echo_string "Configurando"
$INC/config.sh

echo_string "Limpando"
$INC/clear.sh

echo_string "Finalizado"

echo_string "Reiniciando"
reboot
