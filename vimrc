"  __     _____ __  __ ____   ____
"  \ \   / /_ _|  \/  |  _ \ / ___|
"   \ \ / / | || |\/| | |_) | |
"    \ V /  | || |  | |  _ <| |___
"     \_/  |___|_|  |_|_| \_\\____|
"
"  TUTORIAL:   vimtutor
"  EXAMPLE-1:  $VIMRUNTIME/defaults.vim
"  EXAMPLE-2:  $VIMRUNTIME/vimrc_example.vim
"


" ===
" === Basic
" ===
set nowrap
set cursorline
set relativenumber
set scrolloff=10
set wildmenu
set incsearch


" ===
" === Tab indent
" ===
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4


" ===
" === Plugins（Please enable proxy at first if you are in China-mainland）
" ===
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


" ===
" === Add optional packages.
" ===
" === The matchit plugin makes the % command work better, but it is not backwards compatible.
" ===
" === The ! means the package won't be loaded right away but when plugins are loaded during initialization.
" ===
" if has('syntax') && has('eval')
"     packadd! matchit
" endif


" ===
" === https://github.com/dhruvasagar/vim-table-mode#creating-table-on-the-fly 
" ===
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


" ===
" === double space to find and change next <++>
" ===
map <SPACE><SPACE> <Esc>/<++><CR>:nohlsearch<CR>c4l


" ===
" === Start NERDTree when Vim is started without file arguments.
" ===
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif


" ===
" === NERDTree show line numbers
" ===
let g:NERDTreeShowLineNumbers=1


map <C-t> :NERDTree<CR>
map tt :NERDTreeToggle<CR>


