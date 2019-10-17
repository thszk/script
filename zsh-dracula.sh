#!/usr/bin/env bash


if [ "$USER" != "root" ]; then    
    echo "Are you root?" && exit 1
fi


# Install dependencies
apt install git -y
apt install curl -y


# Install ZSH
# DOC https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH
apt install zsh -y

# Making zsk default shell
chsh -s $(which zsh)

# logout the session to continue
# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Dracula theme
# DOC https://github.com/dracula/gnome-terminal
git clone https://github.com/GalaticStryder/gnome-terminal-colors-dracula
cd gnome-terminal-colors-dracula
./install.sh

# Install FiraCode
# Download the last release https://github.com/tonsky/FiraCode/releases
#
# $ unzip FiraCode-2.zip
# $ cp FiraCode-2/distr/ttf/* ~/.fonts
#
# change manualy the terminal font

# Install SpaceShip theme
# DOC https://github.com/denysdovhan/spaceship-prompt
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# alter the ZSH_THEME var at the ~/.zshrc file whith value:
ZSH_THEME="spaceship"
# reset the terminal


# showing versions
echo $(zsk --version)
echo "-~-~-~-~-~-~-~-~-~-~-~-~-~-~-"
echo $(curl --version)
echo "-~-~-~-~-~-~-~-~-~-~-~-~-~-~-"


