set fenc=utf-8

filetype plugin indent on

" vim-plug
call plug#begin()

" List of plugins
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'lambdalisue/fern.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale' 
Plug 'scrooloose/nerdcommenter'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'

call plug#end()

syntax on
colorscheme onedark

" Visual aid
set number
set showmatch
set laststatus=2
set linebreak
set nowrap
set ruler
set cursorline
set cursorcolumn

" Editing
set virtualedit=onemore
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
set smartindent
set timeoutlen=200

" Search
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set wrapscan

" Backup
set nobackup
set nowritebackup
set noswapfile  

" Key mappings
let mapleader = ','

nnoremap ; :
vnoremap ; :

inoremap jk <Esc>
inoremap kj <Esc>
vnoremap jk <Esc>
vnoremap kj <Esc>

map gj j
map gk k

" ALE Configs"
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_set_quickfix = 1
