syntax on
set nocompatible
filetype off

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/syntastic'
Plug 'roman/golden-ratio'
Plug 'airblade/vim-gitgutter'
Plug 'nanotech/jellybeans.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()
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

" Theme
colorscheme jellybeans

" NerdTree config
" toggle NerdTree via Ctrl + n
map <C-n> :NERDTreeToggle<CR>
" open nerdtree to right
let g:NERDTreeWinPos = "right"
let g:NERDTreeCascadeSingleChildDir = 0
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
" let g:airline_theme='deus'
let g:Powerline_symbols='unicode'

set noswapfile
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set hls
set backspace=indent,eol,start

set clipboard=unnamed
set wildignore=*.o,*~,*.pyc
