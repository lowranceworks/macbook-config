#!/bin/zsh


# create directories and favorite public clone repositories
mkdir ~/Learn/
mkdir ~/.dracula-themes

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install iterm2 dracula theme
git clone https://github.com/dracula/iterm.git ~/.dracula-themes/iterm2/

# install vim dracula theme
mkdir -p ~/.vim/pack/themes/start
git clone https://github.com/dracula/vim.git ~/.vim/pack/themes/start/dracula

# commands to run before you install git with brew
sudo chown -R $(whoami) /opt/homebrew /opt/homebrew/share/zsh /opt/homebrew/share/zsh/site-functions /opt/homebrew/var/homebrew/locks
chmod u+w /opt/homebrew /opt/homebrew/share/zsh /opt/homebrew/share/zsh/site-functions /opt/homebrew/var/homebrew/locks

# enable key repeating for vim extension on vscode (see https://github.com/VSCodeVim/Vim)
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false # For VS Code

# enable global key-repeat - this is helpful if you're using Vim in a PWA like code-server
defaults write -g ApplePressAndHoldEnabled -bool false

# remap "caps lock" key to "esc" key
#

# install fonts for powerlevel10k
#

# enable natural scroll test editing for iterm2
#

# set default branch name to main
git config --global init.defaultBranch main

# reload zsh for changes to go into effect
source $HOME/.zshrc

# enable kubectl auto-completion for zsh 
source <(kubectl completion zsh)

# config inkdrop
./scripts/inkdrop_config.sh

# install crossplane-cli
./scripts/install-crossplane-cli.sh

# add symlinks
./scripts/add-symlinks.sh