#!/bin/bash

echo -e "\033[32minstalling homebrew...\033[0m"

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# add homebrew to path
(echo; echo 'eval "$(/opt/homebrew/bin/brew)"') >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# install ansible
brew install ansible

# make Projects directory
mkdir ~/Projects

# clone macbook_config project
git clone https://github.com/lowranceworks/macbook_config.git

# set configuration
ansible-playbook $HOME/Projects/macbook_config/playbooks/set-config.yaml