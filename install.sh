#!/bin/sh
echo "===============================================================";
echo "===============================================================";
echo "====================Interworx Ioncube Instalation==============";
echo "==================== on Centos 6.x X86_64        ==============";
echo "===============================================================";
echo "===============================================================";
sleep 4
echo "===================Your system PHP version is:=================";
php -v
echo "===============================================================";
echo "===============================================================";
echo "Downloading the source files";
sleep 2
wget http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64_5.1.2.tar.gz
echo "===============================================================";
echo "======================Download is done=========================";
echo "===============================================================";
sleep 3
tar xvzf ioncube_loaders_lin_x86-64*
rm -rf ioncube_loaders_lin_x86-64*
echo "===============================================================";
echo "===============================================================";
echo "Done!";
cd ioncube
mv ioncube_loader_lin_5.3.so /usr/lib64/php/modules/ioncube_loader_lin_5.3.so
touch /etc/php.d/ioncube.ini
cd
cd /etc/php.d
echo ";Enable ioncube extension module
zend_extension = /usr/lib64/php/modules/ioncube_loader_lin_5.3.so" > ioncube.ini
cd
rm -rf ioncube
echo "===============================================================";
echo "====================Restarting apache==========================";
echo "===============================================================";
service httpd restart
sleep 3
echo "====================PHP version is:============================";
php -v
echo "===============================================================";
echo "===============================================================";
sleep 3
echo "===============================================================";
echo "===============================================================";
echo "====================If you have any question ==================";
echo "==============  Contact me: staffkaptar@gmaill.com  ===========";
echo "===============================================================";
echo "===============================================================";
sleep 3
exit