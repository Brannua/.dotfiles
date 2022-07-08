" __     _____ __  __ ____   ____
" \ \   / /_ _|  \/  |  _ \ / ___|
"  \ \ / / | || |\/| | |_) | |
"   \ V /  | || |  | |  _ <| |___
"    \_/  |___|_|  |_|_| \_\\____|
"
" TUTORIAL:   vimtutor
" EXAMPLE-1:  $VIMRUNTIME/defaults.vim
" EXAMPLE-2:  $VIMRUNTIME/vimrc_example.vim
"
" Comments in Vimscript start with a `"`
"

syntax on
set cursorline

set number          " for current line
set relativenumber  " for other line

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

set wildmenu

" --------------------------------------------

set nowrap
set scrolloff=10

" --------------------------------------------

set incsearch

set ignorecase
set smartcase

" Set <LEADER> as <SPACE>
let mapleader=" "

" --------------------------------------------

" 'Q' in normal mode enters Ex mode. You almost never want this.
nnoremap Q <Nop>

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" --------------------------------------------

" Refuse to use arrow keys.
" in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

" --------------------------------------------

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'https://github.com/tpope/vim-commentary.git'

Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/preservim/nerdtree.git'
Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin.git'

Plug 'https://github.com/dhruvasagar/vim-table-mode.git'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'https://github.com/mg979/vim-visual-multi.git'

Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'zivyangll/git-blame.vim'

Plug 'https://github.com/christoomey/vim-tmux-navigator.git'

Plug 'https://github.com/tpope/vim-surround'

call plug#end()

" --------------------------------------------

let g:NERDTreeShowLineNumbers=1

nmap <C-c> gcc
nnoremap <C-t> :NERDTree<CR>
nnoremap <C-p> :MarkdownPreview<CR>

nnoremap tt :NERDTreeToggle<CR>
nnoremap <SPACE><SPACE> <Esc>/<++><CR>c4l
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>

" https://github.com/dhruvasagar/vim-table-mode#creating-table-on-the-fly 
function! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr> <bar><bar>
          \ <SID>isAtStartOfLine('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
          \ <SID>isAtStartOfLine('__') ?
          \ '<c-o>:silent! TableModeDisable<cr>' : '__'

" --------------------------------------------

" split window more intuitive
nnoremap <C-b>- :sp<CR>
nnoremap <C-b>\| :vsp<CR>

" --------------------------------------------
" fzf
noremap <C-f> :FZF<CR>

