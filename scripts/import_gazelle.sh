mv /etc/php5/fpm/php.ini /etc/php5/fpm/php.ini.back
cp /vagrant/scripts/files/php.ini /etc/php5/fpm
service php5-fpm restart

mkdir /var/www/app
cd /var/www/app
wget https://github.com/mifune/gazelle/archive/work.zip
unzip work.zip
mv gazelle-work/* .
rm -r gazelle-work
cp /vagrant/scripts/files/config.php classes/
