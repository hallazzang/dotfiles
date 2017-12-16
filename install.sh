#!/bin/bash


abspath() {
    echo "$(cd "$(dirname "$1")"; pwd)/$(basename "$1")"
}
DOTFILES=`dirname $(abspath $0)`


# ZSH
ln -sf $DOTFILES/zsh/zshrc $HOME/.zshrc
ln -sf $DOTFILES/zsh/zprofile $HOME/.zprofile


# Homebrew
if ! [ -x "$(command -v brew)" ]; then
    echo "Installing Homebrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
echo "Updating Homebrew"
brew update
brew upgrade


# Vim
ln -sf $DOTFILES/vim/vimrc $HOME/.vimrc


# Tmux
if ! [ -x "$(command -v reattach-to-user-namespace)" ]; then
    echo "Installing reattach-to-user-namespace"
    brew install reattach-to-user-namespace
fi
ln -sf $DOTFILES/tmux/tmux.conf $HOME/.tmux.conf

