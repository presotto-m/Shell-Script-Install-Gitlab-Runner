#!bin/bash

# Baixando o arquivo gitlab runner
sudo curl -L --output /usr/local/bin/gitlab-runner https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-linux-amd64

# Setando permissão de execução
sudo chmod +x /usr/local/bin/gitlab-runner

# Criando um usuario GitLab Runner
sudo useradd --comment 'GitLab Runner' --create-home gitlab-runner --shell /bin/bash

# Instalando e iniciando serviços
sudo gitlab-runner install --user=gitlab-runner --working-directory=/home/gitlab-runner
sudo gitlab-runner start

# Registrando o Runner
sudo gitlab-runner register --url https://teste.disparopro.dev.br/ --registration-token (SEU TOKEN AQUI)
