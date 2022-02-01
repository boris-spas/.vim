#!/usr/bin/env bash
ln -s ~/.vim/.vimrc ~/.vimrc
ln -s ~/.vim/.tmux.conf ~/.tmux.conf
ln -s ~/.vim/.gitconfig ~/.gitconfig
mv ~/.config/i3/config ~/.config/i3/backup && ln -s ~/.vim/.i3config ~/.config/i3/config
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
