#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install docker
sudo service docker start
sudo usermod -a -G docker ec2-user

# Baixar e rodar a imagem Docker do Cypress
docker pull <SEU_USUARIO_DOCKER>/cypress-seu-barriga:latest
docker run <SEU_USUARIO_DOCKER>/cypress-seu-barriga:latest
