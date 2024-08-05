# WSO2 Identity Server com MySQL

## Introdução

Este repositório contém a configuração necessária para subir o WSO2 Identity Server junto com um banco de dados MySQL usando Docker Compose.

## Pré-requisitos

- Docker instalado ([Guia de instalação do Docker](https://docs.docker.com/get-docker/))
- Docker Compose instalado ([Guia de instalação do Docker Compose](https://docs.docker.com/compose/install/))

## Passo a Passo

### 1. Clonar o Repositório

Clone este repositório para sua máquina local usando o comando:


git clone https://github.com/usuario/repo-wso2is.git

### 2. Navegar até o Diretório do Projeto
Entre no diretório do projeto clonado:

cd repo-wso2is

### 3. Subir os Contêineres com Docker Compose
Execute o comando para iniciar todos os serviços definidos no docker-compose.yml:

docker-compose up

### 4. Acessar o WSO2 Identity Server
Após os contêineres estarem completamente iniciados, acesse a interface de gerenciamento do WSO2 Identity Server no navegador:
http://localhost:9443/carbon

Use as credenciais padrão para login:

Usuário: admin
Senha: admin


