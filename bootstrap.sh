#!/bin/bash

dir=~/dotfiles
files="vimrc vim"

echo "Changing to the $dir directory"
cd $dir

for file in $files; do
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/.$file
done
