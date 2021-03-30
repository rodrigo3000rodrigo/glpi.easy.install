Script glpi Debian PROD

#REFERENCIA 
#https://www.youtube.com/watch?v=i8ZRdxUrRT0
#https://www.youtube.com/watch?v=hYmSmg_7QxY

##Sistema operacional
sudo apt install net-tools
sudo apt-get install openssh-server

##INSTALAÇÂO DO LAMP (APACHE E PHP
#INSTALAR APACHE
sudo apt install apache2  -y
#habilitar papache na inicialização
sudo systemctl enable apache2
#habilitar apache no firewall
sudo ufw allow http
#instalar php7
sudo apt install php php-cli php-mysql libapache2-mod-php  php-gb -y
instalar maria db
sudo apt install mariadb-server mariadb-client -y
systemctl enable mariadb	
#de muito enter
sudo mysql_secure_installation
#Instalar mariadb10 no sistema
sudo mysql -uroot -p

##BANCO DE DADODS GLPI 
sudo mysql -uroot -p
create database glpidb;
create user glpiuser@localhost identificado como "glpipwd";
grant all on glpidb.* to glpiuser@localhost;
flush privileges;
exit
	
sudo apt-get install php-curl php-gd php-imagick php-intl php-apcu php-recode php-memcache php-imap php-mysql php-cas php-ldap php-tidy php-pear php-xmlrpc php-pspell php-gettext php-mbstring php-json php-iconv php-xml php-gd php-xsl -y
cd /var/www/html
sudo wget https://github.com/glpi-project/glpi/releases/download/9.4.5/glpi-9.4.5.tgz
ll
sudo tar xvf glpi-9.4.5.tgz
sudo chown -R www-data:www-data glpi
sudo systemctl restart apache2
