#!/bin/bash
# Copyright © 2024 Michael Kudrak <mike@heyhew.net>
# This code was developed under an Apache License V2.0
clear
echo "This script needs to be run as a normal user with sudo permissions"
sleep 1
apt update && apt upgrade -y
curl -fsSL https://ollama.com/install.sh | sh
echo "Getting llama3 8 Billion"
sleep 1
ollama pull llama3
echo "Getting starcoder. 80+ progamming languages"
ollama pull starcoder
echo "Getting Wizard Coder latest"
ollama pull wizardcoder