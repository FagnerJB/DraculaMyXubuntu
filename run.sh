#!/bin/bash

echo "Iniciando... $(date +%k)"
chmod +x -R ~/Downloads/DraculaMyXubuntu-master/inc
echo "Desinstalando... $(date +%k)"
~/Downloads/DraculaMyXubuntu-master/inc/uninstall.sh
echo "Atualizando... $(date +%k)"
~/Downloads/DraculaMyXubuntu-master/inc/update.sh
echo "Instalando... $(date +%k)"
~/Downloads/DraculaMyXubuntu-master/inc/install.sh
echo "Configurando... $(date +%k)"
~/Downloads/DraculaMyXubuntu-master/inc/config.sh
echo "Limpando... $(date +%k)"
~/Downloads/DraculaMyXubuntu-master/inc/clear.sh
echo "Finalizado. $(date +%k)"
echo "Reiniciando..."
reboot
