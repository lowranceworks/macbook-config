#!/bin/zsh


# install terminal applications
brew install $(<files/brew.txt)

# install gui applications
brew install --cask $(<files/brew-casks.txt)

# upgrade all brew packages
brew upgrade

# set hotkeys
./scripts/set-hotkeys.sh

# set symlinks
./scripts/add-symlinks.sh

# override some home directory files
# cp -r ./files/home_directory/ $HOME 

# reload zsh for changes to go into effect
source $HOME/.zshrc
