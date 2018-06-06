#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo ${BASEDIR}

ln -s ${BASEDIR}/.vimrc ~/.vimrc
ln -s ${BASEDIR}/.tmux.conf ~/.tmux.conf
