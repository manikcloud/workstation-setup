#!/bin/bash

# Install ZSH
sudo apt update && sudo apt install -y zsh

# Verify Installation
zsh --version

# Change Default Shell
chsh -s $(which zsh)

# Install Oh-My-ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Copy the template to .zshrc
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

# Install zsh-autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install zsh-syntax-highlighting plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Add plugins to .zshrc
sed -i '/^plugins=(/a \  git\n  zsh-autosuggestions\n  zsh-syntax-highlighting' ~/.zshrc

# Source .zshrc
source ~/.zshrc

