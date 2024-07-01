#!/bin/bash

# Dotfiles repository URL
echo "Setting up the Dofiles directory"

REPO="git@github.com:alexandregama/dotfiles.git"

# Directory to clone the repository
DIR_DOTFILES="$HOME/dotfiles"

# Clone the repository if it doesn't exist
if [ ! -d "$DIR_DOTFILES" ]; then
  echo "Dotfiles directory does not exist. Creating directory and cloning repository..."
  git clone $REPO $DIR_DOTFILES
  echo "Dotfiles directory created and repository cloned."
else
  echo "Dotfiles directory already exists. Skipping cloning."
fi

# Create symbolic links
ln -sf $DIR_DOTFILES/.zshrc ~/.zshrc
ln -sf $DIR_DOTFILES/.gitconfig ~/.gitconfig
ln -sf $DIR_DOTFILES/bash_aliases ~/.bash_aliases
ln -sf $DIR_DOTFILES/alacritty.toml ~/.config/alacritty

# Remove existing NeoVim config folder if it exists and create symlink
NVIM_CONFIG="$HOME/.config/nvim"
if [ -d "$NVIM_CONFIG" ]; then
  rm -rf "$NVIM_CONFIG"
  echo "Removed existing NeoVim config folder"
fi
ln -sf $DIR_DOTFILES/nvim ~/.config/nvim

echo "Symbolic links have been created successfully."

VSCODE_SETTINGS_SOURCE=$DIR_DOTFILES/vscode/settings.json
VSCODE_SETTINGS_TARGET=~/Library/Application\ Support/Code/User/settings.json

mkdir -p "$(dirname "$VSCODE_SETTINGS_TARGET")"

ln -sf "$VSCODE_SETTINGS_SOURCE" "$VSCODE_SETTINGS_TARGET"

echo "VSCode settings.json symlink created"

# Install VSCode extensions
$DIR_DOTFILES/vscode_extensions.sh
