Do this after you clone in to .vim folder from your home folder

cd .vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git
git clone https://github.com/honza/vim-snippets.git
git clone https://github.com/SirVer/ultisnips.git
rm ~/.vimrc
ln -s ~/.vim/vimrc ~/.vimrc
