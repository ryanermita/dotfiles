syntax on
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'roman/golden-ratio'
Plugin 'airblade/vim-gitgutter'
call vundle#end()
filetype plugin indent on

" General Config
" set line number
set number
" Split window navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set encoding=utf-8

" NerdTree config
" toggle NerdTree via Ctrl + n
map <C-n> :NERDTreeToggle<CR>
" open nerdtree to right
let g:NERDTreeWinPos = "right"
let NERDTreeIgnore = ['\.pyc$']

" Syntastic Config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pyflakes', 'flake8']

" Airline Config
let g:airline_powerline_fonts=1
let g:airline_theme='deus'
let g:Powerline_symbols='unicode'

" CtrlP Config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set noswapfile
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set hls
set backspace=indent,eol,start

set clipboard=unnamed
set wildignore=*.o,*~,*.pyc
