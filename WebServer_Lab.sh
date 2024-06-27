#!/bin/bash
sudo apt install apache2
sudo systemctl start apache2

cd /var/www/html
sudo echo "<h1>Meow</h1>" > index.html

sudo mkdir secret
sudo cd secret

sudo echo "<h1>Secret</h1>" > index.html
