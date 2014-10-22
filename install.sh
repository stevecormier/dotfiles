#!/bin/bash

dir=~/dotfiles
files="vimrc vim bashrc bash_profile"

for file in $files; do
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/.$file
done

if [ ! -d ~/.vim/bundle/vim-airline ]; then
    git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
fi

if [ ! -d ~/.vim/bundle/ctrlp.vim ]; then
    git clone https://github.com/kien/ctrlp.vim ~/.vim/bundle/ctrlp.vim
fi
