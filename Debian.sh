apt update -y
apt list --upgradable
apt install wget -y

################install Apache#####################
apt install apache2 -y

###################Check Status####################
systemctl status apache2
#ctrl+c to exit log


###############install php and mysql ####################

apt install php php-cgi php-mysqli php-pear php-mbstring php-gettext libapache2-mod-php php-common php-phpseclib php-mysql -y


##############Check version#######################################

php --version
"""

PHP 7.3.29-1~deb10u1 (cli) (built: Jul  2 2021 04:04:33) ( NTS )
Copyright (c) 1997-2018 The PHP Group
Zend Engine v3.3.29, Copyright (c) 1998-2018 Zend Technologies
    with Zend OPcache v7.3.29-1~deb10u1, Copyright (c) 1999-2018, by Zend Technologies
"""

##############Setup and Install Mariadb#################################

apt install mariadb-server mariadb-client -y

##########check status and verify
systemctl status mariadb
#ctrl+c to exit

#############phpmyadmin installation#############3
wget -P Downloads https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.tar.gz

#location:'Downloads/phpMyAdmin-latest-all-languages.tar.gz
#########################install gnpug gnpug2
 apt install gnupg gnupg2 -y
###########checkphpmyadmingpggkey
wget -P Downloads https://files.phpmyadmin.net/phpmyadmin.keyring

cd Downloads

################Download GPG.asc file 
wget -P Downloads https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.tar.gz.asc


sudo tar xvf phpMyAdmin-latest-all-languages.tar.gz --strip-components=1 -C /var/www/html/phpMyAdmin
###goto /var/www/html/phpMyAdmin
#goto ~
nano /var/www/html/phpmyadmin/config.inc.php

chmod 660 /var/www/html/phpMyAdmin/config.sample.inc.php
chown -R www-data:www-data /var/www/html/phpMyAdmin 

#http://ip address of your device which  can be found using ip a/phpMyAdmin/