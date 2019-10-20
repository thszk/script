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

echo "################ VSCODE ################"
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
apt update
apt install code

echo "################ INSOMNIA ################"
# https://support.insomnia.rest/article/23-installation
apt install wget -y
echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" | tee -a /etc/apt/sources.list.d/insomnia.list
wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc | apt-key add -
apt update
apt install insomnia -y

# echo "################ HEROKU Standalone ################"
# https://devcenter.heroku.com/articles/heroku-cli
# curl https://cli-assets.heroku.com/install.sh | sh
# Uninstall
# rm /usr/local/bin/heroku
# rm -rf /usr/local/lib/heroku /usr/local/heroku
# rm -rf ~/.local/share/heroku ~/.cache/heroku
echo "################ HEROKU ################"
curl https://cli-assets.heroku.com/install-ubuntu.sh | sh