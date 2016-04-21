Do this after you clone into .vim folder from your home folder

git submodule init
git submodule update
ln -s ~/.vim/.vimrc ~/.vimrc
ln -s ~/.vim/.tmux.conf ~/.tmux.conf

and optionally for newer versions of vim

git submodule foreach git pull origin master
