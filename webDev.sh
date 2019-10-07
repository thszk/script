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
snap install code --classic

echo "################ INSOMNIA ################"
snap install insomnia

###################################################################
# echo "################ ESLINT EXTENSION ################"
# su - $USER -c "code --install-extension dbaeumer.vscode-eslint"
# apm install linter-eslint
#
# echo "################ ATOM ################"
# snap install atom --classic
#
# echo "################ POSTMAN ################"
# snap install postman
#
# echo "################ GITKRAKEN ################"
# snap install gitkraken
#
# echo "################ ATOM MATERIAL UI EXTENSION ################"
# apm install atom-material-ui
# apm install atom-material-syntax-dark
#
# echo "################ VUE HIGHLIGHT ################"
# apm install language-vue
###################################################################

echo ""
echo "On Debian need to create a snap app symbolic link"
echo "$ sudo ln -s /snap/bin/app /usr/bin/app"
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