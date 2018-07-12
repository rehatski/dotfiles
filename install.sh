#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo ${BASEDIR}

ln -s ${BASEDIR}/.tmux.conf ~/.tmux.conf
ln -s ${BASEDIR}/.inputrc ~/.inputrc
ln -s ${BASEDIR}/.tern-project ~/.tern-project
ln -s ${BASEDIR}/.tmux.conf ~/.tmux.conf

ln -s ${BASEDIR}/.vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

mkdir ~/.vim/colors/
cp -a ${BASEDIR}/themes/vim/. ~/.vim/colors/

cd ~/.vim/bundle/YouCompleteMe
./install.py --js-completer
