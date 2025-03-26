
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Keep Plugin commands between vundle#begin/end.
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'iamcco/markdown-preview.nvim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line

syntax on

set relativenumber
set cursorline
set mouse=a

set tabstop=2
set scrolloff=10

set incsearch
set smartcase

" Please use noremap, unless you need to use map(equals to remap) indeed.
noremap oo o<ESC>k
noremap OO O<ESC>j

