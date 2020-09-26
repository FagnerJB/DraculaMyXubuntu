#!/bin/bash

chmod +x ./inc -R
./inc/uninstall.sh
./inc/update.sh
./inc/install.sh
./inc/config.sh
./inc/clear.sh
echo "Finalizado. Reiniciando..."
reboot
