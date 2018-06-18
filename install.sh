#!/bin/sh

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH

echo "Setting up your Mac..."

[[ -z "$DOTFILES" ]] && export DOTFILES="$HOME/.dotfiles"

# Setup Homebrew with all needed receipes, casks
source install/brew &&

# Setup zsh with plugins and .zshrc
source install/zsh &&

# Set NVM with needed versions and global npm packages
source install/nvm &&

# Restore application configs
source install/mackup &&

# Set macOS preferences
# We will run this last because this will reload the shell
source install/macos
