#!/bin/bash

# update server
echo "atualizando servidor..."
apt-get update
apt-get upgrade -y

# install packages
echo "instalando pacotes..."
apt-get install apache2 -y
apt-get install unzip -y
echo "instalado apache2, unzip"

# download a repo from GitHub and move to apache directory
echo "efetuando download de arquivos adicionais..."
cd /tmp
mkdir web-server-script && cd web-server-script
wget "https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip"
unzip main.zip
rm -f main.zip
cd linux-site-dio-main
cp -R ./* /var/www/html
rm -f -r /tmp/web-server-script
echo "Script concluído!"
