#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo ${BASEDIR}

ln -s ${BASEDIR}/.vimrc ~/.vimrc
ln -s ${BASEDIR}/.tmux.conf ~/.tmux.conf
ln -s ${BASEDIR}/.inputrc ~/.inputrc
ln -s ${BASEDIR}/.tern-project ~/.tern-project
ln -s ${BASEDIR}/.tmux.conf ~/.tmux.conf
