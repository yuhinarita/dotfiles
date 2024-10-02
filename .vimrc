" ================================================
" ||                                            ||
" ||   Basics                                   ||
" ||                                            ||
" ================================================

" Vim-plug
" ------------------------------------------------
call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'lambdalisue/fern.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale' 
Plug 'tpope/vim-commentary'
Plug 'mhinz/vim-signify'
Plug 'sheerun/vim-polyglot'
call plug#end()


" Miscellaneous
" ------------------------------------------------
set fenc=utf-8
filetype plugin indent on
syntax on
colorscheme gruvbox


" Visual aid
" ------------------------------------------------
set number relativenumber 
set showmatch
set laststatus=2
set linebreak
" set ruler
set cursorline
" set cursorcolumn
set scrolloff=5


" Editing
" ------------------------------------------------
set virtualedit=onemore
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
set smartindent
" set timeoutlen=500
set foldmethod=manual
set mouse=a

" Search
" ------------------------------------------------
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set wrapscan


" Buffering
" ------------------------------------------------
set nobackup
set nowritebackup
set noswapfile  
set hidden



" ================================================
" ||                                            ||
" ||   Key Mappings                             ||
" ||                                            ||
" ================================================

" Miscellaneous
" ------------------------------------------------
let mapleader = ','

" " Map escape key to jk 
" inoremap jk <Esc> 
" inoremap kj <Esc>
" inoremap jk <Esc>
" inoremap kj <Esc>


" Navigation
" ------------------------------------------------
" Sneak-peak 5 lines at a time
nnoremap <C-y> 5<C-y>
nnoremap <C-e> 5<C-e>
" noremap <C-j> 5j
" noremap <C-k> 5k

" Wrap navigation to normal navigation
noremap j gj
noremap k gk

" Paste with correct indentations
nnoremap p ]p 
nnoremap P ]P

" Multiple indent shifts at a time
vnoremap < <gv
vnoremap > >gv

" " Center the cursor when scrolling
" nnoremap j jzz
" nnoremap k kzz
" nnoremap <C-d> <C-d>zz
" nnoremap <C-u> <C-u>zz
" nnoremap { {zz
" nnoremap } }zz



" ================================================
" ||                                            ||
" ||   Plug-ins                                 ||
" ||                                            ||
" ================================================

" Gruvbox 
" ------------------------------------------------
set background=dark
let g:gruvbox_termcolors = 16
let g:gruvbox_contrast_dark = 'hard'


" ALE 
" ------------------------------------------------
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
" let g:ale_lint_delay = 2000
let g:ale_lint_on_text_changed = 'normal'
let g:ale_set_quickfix = 1


" Fern 
" ------------------------------------------------
let g:fern#default_hidden = 1

 augroup my-fern-startup
   autocmd! *
   autocmd VimEnter * ++nested Fern . -drawer
   autocmd VimEnter * ++nested wincmd l
 augroup END

" function! s:fern_preview_init() abort
"   nmap <buffer><expr>
"         \ <Plug>(fern-my-preview-or-nop)
"         \ fern#smart#leaf(
"         \   "\<Plug>(fern-action-open:edit)\<C-w>p",
"         \   "",
"         \ )
"   nmap <buffer><expr> j
"         \ fern#smart#drawer(
"         \   "j\<Plug>(fern-my-preview-or-nop)",
"         \   "j",
"         \ )
"   nmap <buffer><expr> k
"         \ fern#smart#drawer(
"         \   "k\<Plug>(fern-my-preview-or-nop)",
"         \   "k",
"         \ )
" endfunction

" augroup my-fern-preview
"   autocmd! *
"   autocmd FileType fern call s:fern_preview_init()
" augroup END
