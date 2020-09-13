#!/bin/bash

source _utils.sh

DOT_FILES=(.bashrc .bash_aliases .profile .gitconfig .gitignore_global)

# make dirs
mkdir -p $HOME/.config/nvim

for file in ${DOT_FILES[@]}
do
    if ! [ -f $HOME/$file ]; then
        ln -s $HOME/dotfiles/$file $HOME/$file
    fi
done

if ! [ -d $HOME/.config/nvim ]; then
    ln -s $HOME/dotfiles/.config/nvim $HOME/.config
fi
if ! [ -f $HOME/init.vim ]; then
    ln -s $HOME/dotfiles/.config/nvim/init.vim $HOME/init.vim
fi
if ! [ -f $HOME/lazy.toml ]; then
    ln -s $HOME/dotfiles/.config/nvim/dein/lazy.toml $HOME/lazy.toml
fi
if ! [ -f $HOME/plugins.toml ]; then
    ln -s $HOME/dotfiles/.config/nvim/dein/plugins.toml $HOME/plugins.toml
fi
