#!/bin/sh

# Copies a default .gitconfig file with some handy aliases
# /!\ This will override any existing .gitconfig located at `~/`.
echo "Configuring git global defaults"
cp git/.gitconfig ~/.gitconfig
git config --global user.name 'Marie-Helene Mai'
git config --global user.email 'mai.mariehelene@gmail.com'