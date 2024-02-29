#!/bin/bash

echo "Atualizando servidor"

apt-get update && apt-get upgrade -y

echo "Instalando apache2 e unzip"

apt-get install apache2 unzip -y

echo "Baixando projeto da aplicação"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copiando dados da aplicação para a pasta padrão do apache"

rm -irf /var/www/html/*

cp -r linux-site-dio-main/* /var/www/html/
