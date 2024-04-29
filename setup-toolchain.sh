#!/bin/bash

# Baixa arquivo correto para host Linux e alvo arm 32 bits
# wget https://developer.arm.com/-/media/Files/downloads/gnu/12.3.rel1/binrel/arm-gnu-toolchain-12.3.rel1-x86_64-arm-none-eabi.tar.xz?rev=dccb66bb394240a98b87f0f24e70e87d&hash=B788763BE143D9396B59AA91DBA056B6
# baixa hash 256
# wget https://developer.arm.com/-/media/Files/downloads/gnu/12.3.rel1/binrel/arm-gnu-toolchain-12.3.rel1-x86_64-arm-none-eabi.tar.xz.sha256asc?rev=8c830bbb97954110bbf78af753a2f3b7&hash=101B467320700F582D6C049193EF9DF0

# TODO Escrever verificação automática de sha e lançar erro se não bater
#
# 12a2815644318ebcceaf84beabb665d0924b6e79e21048452c5331a56332b309  arm-gnu-toolchain-12.3.rel1-x86_64-arm-none-eabi.tar.xz
# 12a2815644318ebcceaf84beabb665d0924b6e79e21048452c5331a56332b309  arm-gnu-toolchain-12.3.rel1-x86_64-arm-none-eabi.tar.xz


# extrair
tar -xvf arm-gnu-toolchain-12.3.rel1-x86_64-arm-none-eabi.tar.xz

# entrar no dir
cd arm-gnu-toolchain-12.3.rel1-x86_64-arm-none-eabi/

# executar setup
