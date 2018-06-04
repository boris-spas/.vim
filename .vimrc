""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    Vundle                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"""""""""""""
"  airline  "
"""""""""""""
Plugin 'vim-airline/vim-airline'
set laststatus=2

"""""""""""""""
"  ultisnips  "
"""""""""""""""
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

""""""""""""
"  vim-go  "
""""""""""""
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}

""""""""""""""""
"  whitespace  "
""""""""""""""""
Plugin 'ntpeters/vim-better-whitespace'
autocmd VimEnter * :delcommand EnableWhitespace

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins;
"                     append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo;
"                     append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins;
"                     append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Preferences                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set ruler
set showcmd
set smartcase
set encoding=utf-8
set tabstop=4
set shiftwidth=4
set spell
set tw=80
set hlsearch
let g:tex_flavor = "latex"
set backspace=indent,eol,start

""""""""""""""""""""""""""""""""""""""""""
"  look in subfolders when using 'find'  "
""""""""""""""""""""""""""""""""""""""""""
set path+=**

"""""""""""""""""""""""""""""""""""""""""""""
"  Show a list of options when I press tab  "
"""""""""""""""""""""""""""""""""""""""""""""
set wildmode=longest,list,full
set wildmenu

"""""""""""""""""""""""""""
"  netrw browser as tree  "
"""""""""""""""""""""""""""
"let g:netrw_liststyle=3

"""""""""""""""""""""""""""""""""
"  Navigate through long lines  "
"""""""""""""""""""""""""""""""""
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

"""""""""""""""""""""""""""""""
"  open in tab when I use gf  "
"""""""""""""""""""""""""""""""
nnoremap gf <c-w>gf

"""""""""""""""""""""""""""""""
" Format xml files with gg=G  "
"""""""""""""""""""""""""""""""
autocmd FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

"""""""""""""""""""""""""""""""
" Underline misspelled words  "
"""""""""""""""""""""""""""""""
hi clear SpellBad
hi SpellBad cterm=underline
