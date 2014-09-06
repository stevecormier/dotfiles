#!/bin/bash

dir=~/dotfiles
files="vimrc vim"

echo "Changing to the $dir directory"
cd $dir

for file in $files; do
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/.$file
done

git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/kien/ctrlp.vim ~/.vim/bundle/ctrlp.vim
