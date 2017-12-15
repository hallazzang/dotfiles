#!/bin/bash


abspath() {
    echo "$(cd "$(dirname "$1")"; pwd)/$(basename "$1")"
}
DOTFILES=`dirname $(abspath $0)`


# ZSH
ln -sf $DOTFILES/zsh/.zshrc $HOME/
ln -sf $DOTFILES/zsh/.zprofile $HOME/


# Homebrew
if ! [ -x "$(command -v brew)" ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew update
brew upgrade


# Vim
ln -sf $DOTFILES/vim/.vimrc $HOME/


# Tmux
if ! [ -x "$(command -v reattach-to-user-namespace)" ]; then
    brew install reattach-to-user-namespace
fi
ln -sf $DOTFILES/tmux/.tmux.conf $HOME/

