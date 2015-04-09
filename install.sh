#!/bin/bash

dir=~/dotfiles

echo "Creating symlinks"
ln -s $dir/vim ~/.vim
ln -s $dir/vimrc ~/.vimrc
ln -s $dir/vim ~/.nvim
ln -s $dir/vimrc ~/.nvimrc
ln -s $dir/zshrc ~/.zshrc
ln -s $dir/aliases ~/.aliases

git submodule init
git submodule update
