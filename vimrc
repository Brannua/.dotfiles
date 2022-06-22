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


"
" Basic
" 
syntax on
set nowrap
set cursorline
set scrolloff=10
set wildmenu

"
" the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" down.
"
set number
set relativenumber


"
" Enable searching as you type, rather than waiting till you press enter.
"
set incsearch


"
" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
"
set ignorecase
set smartcase


"
" Unbind some useless/annoying default key bindings.
"
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.


"
" Disable audible bell because it's annoying.
"
set noerrorbells visualbell t_vb=


" 
" Tab indent
" 
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4


" 
" Plugins（Please enable proxy at first if you are in China-mainland）
" 
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'dhruvasagar/vim-table-mode'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'preservim/nerdtree'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
call plug#end()


map <C-c> gcc
map <C-p> :MarkdownPreview<CR>


" 
" https://github.com/dhruvasagar/vim-table-mode#creating-table-on-the-fly 
" 
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


" 
" double space to find and change next <++>
" 
map <SPACE><SPACE> <Esc>/<++><CR>:nohlsearch<CR>c4l


" 
" Start NERDTree when Vim is started without file arguments.
" 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif


" 
" NERDTree show line numbers
" 
let g:NERDTreeShowLineNumbers=1


map <C-t> :NERDTree<CR>
map tt :NERDTreeToggle<CR>


"
" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
"
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

