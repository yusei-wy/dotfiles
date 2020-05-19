#!/bin/bash

DOT_FILES=(.bashrc .bash_aliases .profile .gitconfig .gitignore_global)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done
