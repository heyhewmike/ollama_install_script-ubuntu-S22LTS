#!/bin/bash
echo "Getting llama3 8 Billion"
# sleep 1
ollama pull llama3
echo "Getting starcoder. 80+ progamming languages"
ollama pull starcoder
echo "Getting Wizard Coder latest"
ollama pull wizardcoder
echo "Getting Codellama"
ollama pull codellama
echo "Getting codeup"
ollama pull codeup