#!/bin/sh

# SSH
mkdir -p .ssh
cp -af ~/.ssh/config .ssh/config

# Neovim
mkdir -p .config
cp -af ~/.config/nvim .config/nvim

# Push to repo
git add -A
git commit -m "`date -Iseconds`" .
git push

