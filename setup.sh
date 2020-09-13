#!/bin/bash

source ./_utils.sh


echo "make required directories"
mkdir -p $HOME/bin


echo "install packages..."
sudo apt install colordiff
sudo apt install fonts-firacode
sudo apt install git
sudo apt install neovim
sudo apt install tmux
sudo apt install trash-cli
sudo apt install xsel
if ! existsCmd rustup; then
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi
if ! [ -d $HOME/.anyenv ]; then
    git clone https://github.com/riywo/anyenv $HOME/.anyenv
fi
if ! [ -d $HOME/bin/gibo ]; then
    git clone https://github.com/simonwhitaker/gibo.git $HOME/bin/gibo
fi
source $HOME/.profile


echo "apply dotfiles"
bash $HOME/dotfiles/init.sh


echo "install rust tools"
cargo install bat
cargo install exa
cargo install hexyl
cargo install starship
cargo install tokei


echo "install anyenvs..."
anyenv install --init
anyenv install goenv
anyenv install nodenv
anyenv install pyenv
source $HOME/.profile


# pyenv
echo "install pyenv..."
pyenv install 3.8.1
pyenv global 3.8.1
# virtualenv
if ! [ -d $(pyenv root)/plugins/pyenv-virtualenv ]; then
    git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
fi
source $HOME/.profile
pyenv virtualenv 3.8.1 neovim3


echo "setup donw"
