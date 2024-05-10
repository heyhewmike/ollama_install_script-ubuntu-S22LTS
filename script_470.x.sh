#!/bin/bash
# Copyright © 2024 Michael Kudrak <mike@heyhew.net>
# This code was developed under an Apache License V2.0
clear
echo "This script needs to be run as a normal user with sudo permissions"
sleep 1
echo "\$nrconf{restart} = 'a';" >> /etc/needrestart/conf.d/no-prompt.conf
apt update && apt upgrade -y
wget https://us.download.nvidia.com/XFree86/Linux-x86_64/470.239.06/NVIDIA-Linux-x86_64-470.239.06.run
chmod +x NVIDIA-Linux-x86_64-470.239.06.run
./NVIDIA-Linux-x86_64-470.239.06.run
curl -fsSL https://ollama.com/install.sh | sh
wget https://raw.githubusercontent.com/heyhewmike/ollama_install_script-ubuntu-S22LTS/develop/models.sh
chmod +x models.sh
sudo -u "$SUDO_USER" ./models.sh