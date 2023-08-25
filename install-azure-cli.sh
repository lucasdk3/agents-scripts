#!/bin/bash

# Atualiza a lista de pacotes
sudo apt update

# Instala as dependências
sudo apt install ca-certificates curl apt-transport-https lsb-release gnupg -y

# Importa a chave GPG da Microsoft
curl -sL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/microsoft.gpg > /dev/null

# Adiciona o repositório do Azure CLI ao sources.list
AZ_REPO=$(lsb_release -cs)
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | sudo tee /etc/apt/sources.list.d/azure-cli.list

# Atualiza novamente a lista de pacotes
sudo apt update

# Instala a Azure CLI
sudo apt install azure-cli -y

# Exibe a versão da Azure CLI instalada
az --version

# Baixa o pacote do AzCopy para Linux
wget -O azcopy.tar.gz https://aka.ms/downloadazcopy-v10-linux

# Descompacta o arquivo do AzCopy
tar -xf azcopy.tar.gz

# Move o binário do AzCopy para um diretório no PATH
sudo mv ./azcopy_linux_amd64_*/azcopy /usr/local/bin/

# Exibe a versão do AzCopy instalada
azcopy --version