#!/bin/bash


abspath() {
    echo "$(cd "$(dirname "$1")"; pwd)/$(basename "$1")"
}
DOTFILES=`dirname $(abspath $0)`


# ZSH
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing Oh My Zsh"
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
ln -sf $DOTFILES/zsh/zshrc $HOME/.zshrc
ln -sf $DOTFILES/zsh/zprofile $HOME/.zprofile
ln -sf $DOTFILES/zsh/hallambda.zsh-theme $HOME/.oh-my-zsh/custom/themes/hallambda.zsh-theme


# Git
git config --global alias.ignore '!gi() { curl -L -s https://www.gitignore.io/api/$@ ;}; gi'


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

