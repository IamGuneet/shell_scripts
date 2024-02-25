#!/bin/bash

#Installing a html css website on apache2 server from 3rd party,unzipping it and moving it to /var/www/html repo
su -i
sudo apt update
sudo apt install apache2 wget unzip -y
wget https://www.tooplate.com/zip-templates/2137_barista_cafe.zip
unzip 2137_barista_cafe.zip
cp -r 2137_barista_cafe/* /var/www/html/
systemctl restart apache2
