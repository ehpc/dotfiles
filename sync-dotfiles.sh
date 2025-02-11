#!/bin/sh

# SSH
rm -rf .ssh
mkdir -p .ssh
cp -af ~/.ssh/config .ssh/config

# Remove old config folder
rm -rf .config

# Neovim
mkdir -p .config
cp -af ~/.config/nvim .config/nvim

# Push to repo
git add -A
git commit -m "`date -Iseconds`" .
git push

