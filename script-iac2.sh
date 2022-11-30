#!/bin/bash
#-------------------------------------------------------
# SCRIPT DE PROVISIONAMENTO SERVIDOR WEB(APACHE)
# AUTOR: RAMARTINS ROCHA DE ANDRADE
# EMAIL: rarandrade@gmail.com
#-------------------------------------------------------

# INICIO DO SCRIPT #
echo "Atualizando Repositorios e Atualizando Sistema..."
apt update && apt upgrade -y
echo "Sistema Atualizando com Sucesso"
#------------------------------------------------------
echo "Instalando Apache..."
apt install apache2 -y
echo "Apache instalado com Sucesso"
#------------------------------------------------------
echo "Instalando Unzip..."
apt install unzip
echo "Unzip Instalado Com Sucesso"
#------------------------------------------------------
echo "Baixando Projeto GitHub .."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -P /tmp
echo "Projeto Baixado Com Sucesso no Diretorio /tmp"
#------------------------------------------------------
echo "Descompactando Projeto no Diretorio do Apache..."
unzip /tmp/main.zip -d /var/www/html/
rm -rf /tmp/main.zip
mv /var/www/html/linux-site-dio-main /var/www/html/site_dio
systemctl restart apache2
echo "Projeto Descompactado com Sucesso"

# FIM DO SCRIPT #
