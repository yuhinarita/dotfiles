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
Plug 'sheerun/vim-polyglot'

call plug#end()

syntax on
colorscheme onedark

" Visual aid
set number
set showmatch
set laststatus=2
set linebreak
set ruler
set cursorline
set cursorcolumn
set scrolloff=5

" Editing
set virtualedit=onemore
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
set smartindent
set timeoutlen=500
set foldmethod=manual

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

" Escape key 
inoremap jk <Esc>
inoremap kj <Esc>
vnoremap jk <Esc>
vnoremap kj <Esc>

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Center the cursor when scrolling
"nnoremap j jzz
"nnoremap k kzz
"nnoremap <C-d> <C-d>zz
"nnoremap <C-u> <C-u>zz
"nnoremap { {zz
"nnoremap } }zz

nnoremap <C-y> 5<C-y>
nnoremap <C-e> 5<C-e>

" ALE Configs"
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
"let g:ale_lint_delay = 2000
let g:ale_lint_on_text_changed = 'normal'
let g:ale_set_quickfix = 1
