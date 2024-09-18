set fenc=utf-8

filetype plugin indent on

" vim-plug
call plug#begin()

" List of plug-ins
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'preservim/nerdtree'

call plug#end()

syntax on
colorscheme onedark

" Visual aid
set number
set showmatch
set laststatus=2
set linebreak
set wrap
set ruler
set cursorline
set cursorcolumn

" Editing
set virtualedit=onemore
set shiftwidth=2
set tabstop=2
set expandtab
set autoindent
set smartindent

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
nnoremap ; :
vnoremap ; :

inoremap jk <Esc>
inoremap kj <Esc>

noremap gj j
noremap gk k
