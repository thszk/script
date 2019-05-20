#!/usr/bin/env bash

if [ "$USER" != "root" ]; then
    echo "Without execute permission" && exit 1
fi


echo "################ UPDATE ################"
apt update

echo "################ UPGRADE ################"
apt upgrade -y

echo "################ GIT ################"
apt install git -y

echo "################ SNAP ################"
apt install snapd -y

echo "################ VSCODE ################"
snap install code --classic

echo "################ ESLINT EXTENSION ################"
code --install-extension dbaeumer.vscode-eslint

echo "################ CURL ################"
apt install curl -y

echo "################ NODE ################"
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
apt-get install -y nodejs

echo "################ BUILD ESSENTIAL ################"
apt-get install -y build-essential

echo "################ VUE ################"
npm install -g @vue/cli

echo "################ POSTMAN ################"
snap install postman

echo "################ GITKRAKEN ################"
snap install gitkraken

