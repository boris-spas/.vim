Do this after you clone into .vim folder from your home folder

ln -s ~/.vim/.vimrc ~/.vimrc
ln -s ~/.vim/.tmux.conf ~/.tmux.conf
ln -s ~/.vim/.gitconfig ~/.gitconfig || cat ~/.vim/.gitconfig >> ~/.gitconfig
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim
:PluginInstall
