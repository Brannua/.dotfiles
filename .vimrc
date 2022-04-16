" Please ensure that you have enabled your system proxy settings.

" https://github.com/junegunn/vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set wrap
set number
set wildmenu
set cursorline
set scrolloff=40

set tabstop=4      " 一个 tab 占 4 个字符
set shiftwidth=4   " 每一级缩进的长度，一般设置为和 tabstop 一样
set expandtab      " 缩进用空格来表示
set softtabstop=4  " 配合 expandtab，表示在编辑模式按退格键时退回缩进的长度

" Plugins
call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()

map <C-u> gcc
map <C-p> :MarkdownPreview<CR>
