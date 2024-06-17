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
fi

# Create symbolic links
ln -sf $DIR/.zshrc ~/.zshrc
ln -sf $DIR/.gitconfig ~/.gitconfig
ln -sf $DIR/bash_aliases ~/.bash_aliases

echo "Symbolic links have been created successfully."
