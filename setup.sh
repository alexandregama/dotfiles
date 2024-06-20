#!/bin/bash

# Dotfiles repository URL
echo "Setting up the Dofiles directory"

REPO="git@github.com:alexandregama/dotfiles.git"

# Directory to clone the repository
DIR="$HOME/dotfiles"

# Clone the repository if it doesn't exist
if [ ! -d "$DIR" ]; then
  echo "Dotfiles directory does not exist. Creating directory and cloning repository..."
  git clone $REPO $DIR
  echo "Dotfiles directory created and repository cloned."
else
  echo "Dotfiles directory already exists. Skipping cloning."
fi

# Create symbolic links
ln -sf $DIR/.zshrc ~/.zshrc
ln -sf $DIR/.gitconfig ~/.gitconfig
ln -sf $DIR/bash_aliases ~/.bash_aliases


# Remove existing NeoVim config folder if it exists and create symlink
NVIM_CONFIG="$HOME/.config/nvim"
if [ -d "$NVIM_CONFIG" ]; then
  rm -rf "$NVIM_CONFIG"
  echo "Removed existing NeoVim config folder"
fi
ln -sf $DIR/nvim ~/.config/nvim

echo "Symbolic links have been created successfully."
