
" ===
" === https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
" ===

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'https://github.com/gcmt/wildfire.vim.git'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()

" ===
" === Some basic settings
" ===

set mouse=a
set scrolloff=10
set nowrap
set cursorline
set number relativenumber
set ignorecase smartcase
set incsearch hlsearch
set splitbelow splitright
set wildmenu
set ttimeoutlen=0
set tabstop=4
set shiftwidth=4

nmap Q <Nop>
nmap T :terminal<CR>
nmap <SPACE><SPACE> <ESC>/<++><CR>c4l

nmap <C-b>- :sp<CR>
nmap <C-b>\| :vsp<CR>

" nmap <C-s> :w<CR>
" nmap <C-q> :q<CR>

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

nmap <C-c> gcc
nmap <C-p> :MarkdownPreview<CR>

nmap <Left>		:echo "Please use h"<CR>
nmap <Right>	:echo "Please use l"<CR>
nmap <Up>		:echo "Please use k"<CR>
nmap <Down>		:echo "Please use j"<CR>
imap <Left>		:echo "Please use h"<CR>
imap <Right>	:echo "Please use l"<CR>
imap <Up>		:echo "Please use k"<CR>
imap <Down>		:echo "Please use j"<CR>

" ===
" === Snippits
" ===

autocmd Filetype markdown inoremap ,1 #<SPACE>
autocmd Filetype markdown inoremap ,2 ##<SPACE>
autocmd Filetype markdown inoremap ,3 ###<SPACE>

autocmd Filetype markdown inoremap ,' '' <++><ESC>F'i
autocmd Filetype markdown inoremap ,' "" <++><ESC>F"i

autocmd Filetype markdown inoremap ,a [](<++>) <++><ESC>F[a
autocmd Filetype markdown inoremap ,p ![](<++>) <++><ESC>F[a

