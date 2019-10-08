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
# snap install code --classic
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

###################################################################
# echo "################ POSTMAN ################"
# snap install postman
###################################################################

echo ""
echo "Add snap binary path to .bashrc or .zshrc file"
echo " export PATH=$PATH:/snap/bin"
echo ""
echo "run the commands to install vsCode extentions:"
echo ""
echo "$ code --install-extension dbaeumer.vscode-eslint \\"      # eslint
echo "code --install-extension octref.vetur \\"                  # vetur
echo "code --install-extension mikestead.dotenv \\"              # dotenv
echo "code --install-extension dracula-theme.theme-dracula \\"   # theme
echo "code --install-extension pkief.material-icon-theme \\"     # icon
echo "code --install-extension formulahendry.auto-close-tag \\"
echo "code --install-extension formulahendry.auto-rename-tag"