#!/bin/bash

echo_string(){
    printf '\033[35m'
    echo "{=(=[ ${1} ]=)=}"
    printf '\033[m'
}

INC=$HOME/Downloads/DraculaMyXubuntu-master/inc

printf '\033[35m'
cat <<-'EOF'
 ________                            \__/
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

echo_string "ZSH"
$INC/0_zsh.sh

echo_string "Desinstalando"
$INC/1_uninstall.sh

echo_string "Atualizando"
$INC/2_update.sh

echo_string "Instalando"
$INC/3_install.sh

echo_string "Configurando"
$INC/4_config.sh

echo_string "Limpando"
$INC/5_clear.sh

echo_string "Finalizado!"

echo_string "Reiniciando"
reboot
