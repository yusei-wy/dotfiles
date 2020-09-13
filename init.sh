#!/bin/bash

DOT_FILES=(.bashrc .bash_aliases .profile .gitconfig .gitignore_global .config/nvim/init.vim)

# make dirs
mkdir -p $HOME/.config/nvim

for file in ${DOT_FILES[@]}
do
    if ! [ -f $HOME/$file ]; then
        ln -s $HOME/dotfiles/$file $HOME/$file
    fi
done
