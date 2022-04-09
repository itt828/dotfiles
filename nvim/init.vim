"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('$HOME/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('$HOME/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
call dein#load_toml('~/.config/dein/dein.toml',{'lazy':0})
call dein#load_toml('~/.config/dein/dein_lazy.toml',{'lazy':1})
" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

set mouse=a

set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set number

set expandtab
set tabstop=4
set shiftwidth=4
set smartindent

set cursorline
set cursorcolumn

set noswapfile

autocmd BufRead,BufNewFile *.saty set filetype=satysfi
autocmd BufRead,BufNewFile *.satyg set filetype=satysfi
autocmd BufRead,BufNewFile *.satyh set filetype=satysfi

colorscheme hatsunemiku 


