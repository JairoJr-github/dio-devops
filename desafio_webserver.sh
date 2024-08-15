echo "Atualizando sistema..."
apt-get update 
apt-get upgrade -y

echo "Instalando dependencias Apache unzip ..."
apt install apache2 unzip -y

echo "Baixando repositório do site..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando repositório..."
unzip main.zip 

echo "Enviando para a pasta do apache..."
cd linux-site-dio-main
cp -R * /var/www/html/
