" ensure that you have enabled your system proxy settings.

" https://github.com/junegunn/vim-plug

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim 自带主题的存放目录：/usr/share/vim/vim82/colors/

syntax enable
colorscheme murphy

set wrap
set number
set cursorline
set scrolloff=40
set wildmenu
set relativenumber

set tabstop=4      " 一个 tab 占 4 个字符
set shiftwidth=4   " 每一级缩进的长度，一般设置为和 tabstop 一样
set expandtab      " 缩进用空格来表示
set softtabstop=4  " 配合 expandtab，表示在编辑模式按退格键时退回缩进的长度

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'

call plug#end()

map <C-u> gcc

map <C-w> :w<CR>
map <C-q> :q<CR>
map <C-r> :source ~/.vimrc<CR>