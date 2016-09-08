#!/bin/bash

mkdir $HOME/.vim
cd $HOME
cp -a dotvim/. .vim
ln -s $HOME/.vim/vimrc $HOME/.vimrc

cd $HOME/.vim
git submodule init
git submodule sync
git submodule update
