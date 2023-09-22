#!/bin/bash

# install homebrew
echo -e "\033[32minstalling homebrew...\033[0m"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew)"') >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# install ansible
echo -e "\033[32minstalling ansible...\033[0m"
brew install ansible

# clone macbook_config project
echo -e "\033[32mcloning macbook_config project...\033[0m"
mkdir ~/Projects
git clone https://github.com/lowranceworks/macbook_config.git $HOME/Projects/macbook_config

# run set-config.yaml playbook
echo -e "\033[32mrunning set-config.yaml playbook...\033[0m"
ansible-playbook $HOME/Projects/macbook_config/playbooks/set-config.yaml