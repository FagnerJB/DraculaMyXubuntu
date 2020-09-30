#!/bin/bash

INC=$HOME/Downloads/DraculaMyXubuntu-master/inc
FILES=$HOME/Downloads/DraculaMyXubuntu-master/files

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

echo "Iniciando... $(date +%k)"
chmod +x -R $INC
echo "Desinstalando... $(date +%k)"
$INC/uninstall.sh
echo "Atualizando... $(date +%k)"
$INC/update.sh
echo "Instalando... $(date +%k)"
$INC/install.sh
echo "Configurando... $(date +%k)"
$INC/config.sh
echo "Limpando... $(date +%k)"
$INC/clear.sh
echo "Finalizado. $(date +%k)"
echo "Reiniciando..."
reboot
