" 让 Vim 在每次启动的时候都检测一下 vim-plug 有没有被安装; 如果没有的话, Vim 会尝试安装 vim-plug, 并自动运行 :PlugInstall
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
endif

" vim 自带颜色主题目录: /usr/share/vim/vim82/colors/
syntax enable
colorscheme murphy

" 让光标所在行出现高亮下划线
set cursorline

" 代码显示行号
set number

" 配置代码缩进
set tabstop=4       " 一个tab占4个字符
set shiftwidth=4    " 每一级缩进的长度,一般设置为和tabstop一样
set expandtab       " 缩进用空格来表示
set softtabstop=4   " 配合expandtab,表示在编辑模式按退格键时退回缩进的长度

" 配置代码换行，使一行代码在窗口中显示不下的时候自动换行
set wrap

" 配置类似于 autosuggestion 的功能
set wildmenu

set scrolloff=15

" 自定义快捷键
map <C-w> :w<CR>
map <C-q> :q<CR>
map <C-r> :source ~/.vimrc<CR>
map <C-p> :MarkdownPreview<CR>
map <C-u> gcc

" faster navigation
noremap j 5j
noremap k 5k

" vim-plug 管理的插件列表
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'tpope/vim-commentary'

call plug#end()
