# Projeto - Desafio CI/CD - DIO - Jornada DevOps com AWS - Impulso

# Pasta app
contém arquivos da aplicação em php Back e front
    - conexão.php
    - css.css
    - incluir.php
    - index.php
    - js.js

E contém também Dockerfile subindo webserver Apache para a aplicação

# Pasta Mysql
Contém Dockerfile subindo DBserver MySQL
com script sql para criação da tabela

# Tabela para ser cirada do bancod e dados
# ############################
# ## id         ## int      ##
# ## nome       ## varchar  ##
# ## email      ## varchar  ##
# ## comentario ## varchar  ##
# ############################

#### Arquivos em ordem para execução
# .gitlab-ci.yml
Arquivo de CI-CD do gitlab executará o build das imagens docker do banco e da aplicação e subirá para o docker-hub
após isso, executará na GCP o script.sh contendo as instruções de execução dos arquivos respectivamente: 
secret.yml,
loadbalancer.yml,
mysql-deployment.yml
app-deployment.yml

# Arquivo app-deployment.yml
Deployment da aplicação php com imagem 

