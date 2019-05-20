#!/usr/bin/env bash

if [ "$USER" != "root" ]; then
    echo "Without execute permission" && exit 1
fi

# ---

apt update
apt upgrade

apt install git -y

apt install snapd -y
snap install code --classic

curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
apt-get install -y nodejs
apt-get install -y build-essential

npm install -g @vue/cli
