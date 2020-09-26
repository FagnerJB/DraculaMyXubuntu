#!/bin/bash

chmod +x ./inc -R
./inc/uninstall.sh
./inc/update.sh
./inc/install.sh
./inc/config.sh
./inc/clear.sh
echo "Finalizado. Reinicie o sistema o quanto antes para maior segurança."
while true; do
    read -p "Deseja reiniciar agora? [S]im / [N]ão " yn
    case $yn in
        [YySs]* ) reboot; break;;
        [Nn]* ) exit;;
        * ) exit;;
    esac
done
