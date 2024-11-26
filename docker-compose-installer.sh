
#!/bin/bash

# Atualizar os pacotes existentes
sudo apt-get update

# Instalar pacotes necessários
sudo apt-get install -y curl

# Baixar a versão estável atual do Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Aplicar permissões executáveis ao binário
sudo chmod +x /usr/local/bin/docker-compose

# Testar a instalação
docker-compose --version
