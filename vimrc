filetype on
filetype plugin on
syntax on
colorscheme Tomorrow-Night

set guifont=Menlo\ Regular:h180
set colorcolumn=79
set number
let mapleader = " "

map <leader>s :source ~/.vimrc<CR>

set hidden
set history=100

filetype indent on
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set showmatch
set noswapfile

set hlsearch

set splitright

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
let NERDTreeShowHidden=1

let g:jedi#use_splits_not_buffers = "left"

let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1
set updatetime=100
set backspace=indent,eol,start
:let g:notes_directories = ['~/Notes']
execute pathogen#infect()
call plug#begin()
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()
