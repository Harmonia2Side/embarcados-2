#!/bin/bash

# sai do programa em caso de erro
set -e

# Baixa arquivo correto para host Linux e alvo arm 32 bits
# wget https://developer.arm.com/-/media/Files/downloads/gnu/12.3.rel1/binrel/arm-gnu-toolchain-12.3.rel1-x86_64-arm-none-eabi.tar.xz?rev=dccb66bb394240a98b87f0f24e70e87d&hash=B788763BE143D9396B59AA91DBA056B6
# baixa hash 256
# wget https://developer.arm.com/-/media/Files/downloads/gnu/12.3.rel1/binrel/arm-gnu-toolchain-12.3.rel1-x86_64-arm-none-eabi.tar.xz.sha256asc?rev=8c830bbb97954110bbf78af753a2f3b7&hash=101B467320700F582D6C049193EF9DF0

# TODO Escrever verificação automática de sha e lançar erro se não bater
#
# 12a2815644318ebcceaf84beabb665d0924b6e79e21048452c5331a56332b309  arm-gnu-toolchain-12.3.rel1-x86_64-arm-none-eabi.tar.xz
# 12a2815644318ebcceaf84beabb665d0924b6e79e21048452c5331a56332b309  arm-gnu-toolchain-12.3.rel1-x86_64-arm-none-eabi.tar.xz

install_dir="$HOME/.local/bin/arm-toolchain"
echo "--AZ: Instalando toolchain em $install_dir"

echo '--AZ: remove instalações antigas'
rm -rf --preserve-root $install_dir

echo '--AZ: Cria diretório de instalação'
mkdir $install_dir

echo '--AZ: Instalando dependências' 
# sudo apt install python-is-python3 libncurses5 libncursesw5

python --version

echo "--AZ: Extraindo toolchain para $install_dir"
tar -xf arm-gnu-toolchain-12.3.rel1-x86_64-arm-none-eabi.tar.xz -C $install_dir

echo "--AZ: Configurando PATH no .bashrc"
cat << EOF | tee -a $HOME/.bashrc
export PATH=$install_dir/arm-gnu-toolchain-12.3.rel1-x86_64-arm-none-eabi/bin:\$PATH
EOF

echo '--AZ: Installation complete!'
echo '--AZ: To test, open a new shell and run arm-none-eabi-gcc -v'