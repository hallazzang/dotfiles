" Install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let g:seoul256_background = 234
let g:indentLine_char = '│'
let g:go_fmt_command = 'goimports'

call plug#begin('~/.vim/plugged')
Plug 'junegunn/seoul256.vim'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'hdima/python-syntax'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'Yggdroot/indentLine'
Plug 'bronson/vim-trailing-whitespace'
Plug 'Shougo/neocomplete.vim'
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}
Plug 'djoshea/vim-autoread'
Plug 'mitsuhiko/vim-jinja'
call plug#end()

syntax on
filetype plugin indent on
set splitbelow
set splitright
set ttyfast
set lazyredraw
set history=500
set autoread
set ruler
set bg=dark
set backspace=eol,start,indent
set ignorecase
set smartcase
set hlsearch
set incsearch
set noerrorbells
set novisualbell
set encoding=utf8
set nobackup
set nowb
set noswapfile
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set smartindent
set wrap
set number
set so=4
set clipboard=unnamed
"colorscheme seoul256
"autocmd InsertEnter * set cul
"autocmd InsertLeave * set nocul
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

autocmd FileType python setlocal colorcolumn=80
highlight ColorColumn ctermbg=235
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 softtabstop=2

let mapleader = ","
let g:mapleader = ","

nnoremap <leader>w :w<cr>

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap [t :tabp<cr>
nnoremap ]t :tabn<cr>
nnoremap [c :tabc<cr>
nnoremap [c :tabc<cr>
nnoremap <C-n> :NERDTreeToggle<cr>
nnoremap <silent> <leader>= :vertical resize +4<cr>
nnoremap <silent> <leader>- :vertical resize -4<cr>

vnoremap <silent> <leader># :s/^/# /<cr>:noh<cr>
vnoremap <silent> <leader>-# :s/^# \?//<cr>:noh<cr>
