#!/bin/sh

echo "Setting up your Mac..."

export DOTFILES=$HOME/.dotfiles

# Setup Homebrew with all needed receipes, casks
source install/brew

# Setup zsh with plugins and .zshrc
source install/zsh

# Restore application configs
source install/mackup

# Set NVM with needed versions and global npm packages
source install/nvm

# Set macOS preferences
# We will run this last because this will reload the shell
source install/macos
