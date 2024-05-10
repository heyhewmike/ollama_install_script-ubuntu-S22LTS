#!/bin/bash
# Copyright © 2024 Michael Kudrak <mike@heyhew.net>
# This code was developed under an Apache License V2.0
clear
echo "This script needs to be run as a normal user with sudo permissions"
sleep 1
cat "$nrconf{restart} = 'a';" > /etc/needrestart/conf.d/no-prompt.conf
apt update && apt upgrade -y
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.1-1_all.deb
dpkg -i cuda keyring_1.1-1_all.deb
apt update && apt install -y cuda-toolkit-12-4 cuda-drivers
# apt install -y cuda-drivers
curl -fsSL https://ollama.com/install.sh | sh
echo "Getting llama3 8 Billion"
# sleep 1
ollama pull llama3
echo "Getting starcoder. 80+ progamming languages"
ollama pull starcoder
echo "Getting Wizard Coder latest"
ollama pull wizardcoder