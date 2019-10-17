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

echo "################ CURL ################"
apt install curl -y

echo "################ NODE ################"
# https://nodejs.org/en/download/package-manager/
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
apt install -y nodejs

echo "################ BUILD ESSENTIAL ################"
apt install -y build-essential

echo "################ VUE ################"
npm install -g @vue/cli

echo "################ SNAP ################"
apt install snapd -y

echo "################ VSCODE ################"
snap install code --classic

echo "################ INSOMNIA ################"
snap install insomnia

code --install-extension dbaeumer.vscode-eslint
code --install-extension octref.vetur
code --install-extension mikestead.dotenv
code --install-extension dracula-theme.theme-dracula
code --install-extension pkief.material-icon-theme
code --install-extension formulahendry.auto-close-tag
code --install-extension formulahendry.auto-rename-tag