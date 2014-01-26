#!/usr/bin/env bash

echo "+----------------------------------------------------+"
echo "|  I am your guide for setting up this vagrant box   |"
echo "|  with the RoR stack and additions with my cryptos  |"
echo "|  RoR app as a demo site to see if everything is    |"
echo "|  working fully.                                    |"
echo "|                                                    |"
echo "|  Everything is done for you except for telling     |"
echo "|  nginx where the web app is. This script will tell |"
echo "|  tell you how to do that painlessly.               |"
echo "+----------------------------------------------------+"

echo " - Downloading stack setup script"
wget https://raw.github.com/hak8or/nginx-passenger-postgres-rails-setup-script/master/config.sh &>>/dev/null
chmod 777 config.sh
sudo ./config.sh vagrant

echo " - Downloading cryptos setup script"
wget https://raw.github.com/hak8or/cryptos/master/setup.sh &>>/dev/null
chmod 777 setup.sh
sudo ./setup.sh vagrant

echo "+----------------------------------------------------+"
echo "|  Vagrant box is now finished setting up!           |"
echo "|                                                    |"
echo "|          You can now SSH in with: vagrant ssh      |"
echo "+----------------------------------------------------+"
