#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo ${BASEDIR}

# Install VSCODE first
ln -sf ${BASEDIR}/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -sf ${BASEDIR}/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

ln -s ${BASEDIR}/.vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

mkdir ~/.vim/colors/
cp -a ${BASEDIR}/themes/vim/. ~/.vim/colors/