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

# echo "################ ATOM ################"
# snap install atom --classic

echo "################ ESLINT EXTENSION ################"
code --install-extension dbaeumer.vscode-eslint
# apm install linter-eslint

# echo "################ ATOM MATERIAL UI EXTENSION ################"
# apm install atom-material-ui
# apm install atom-material-syntax-dark

# echo "################ VUE HIGHLIGHT ################"
# apm install language-vue

echo "################ CURL ################"
apt install curl -y

echo "################ NODE ################"
# https://nodejs.org/en/download/package-manager/
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
apt-get install -y nodejs

echo "################ BUILD ESSENTIAL ################"
apt-get install -y build-essential

echo "################ VUE ################"
npm install -g @vue/cli

echo "################ POSTMAN ################"
snap install postman

echo "################ INSOMNIA ################"
snap install insomnia

# echo "################ GITKRAKEN ################"
# snap install gitkraken
