#!/bin/bash

dir=~/dotfiles
files="vimrc vim bashrc bash_profile"

for file in $files; do
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/.$file
done
