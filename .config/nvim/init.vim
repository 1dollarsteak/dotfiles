set backspace=indent,eol,start
set shiftwidth=2
set autoindent
set tabstop=2
set expandtab
set colorcolumn=80
set wrap
set showmatch
set nocompatible
set ruler
set showcmd
set showmode
set number
set incsearch
set ignorecase
set smartcase
set hlsearch
set shortmess+=IF
set noshowmode
syntax on
colorscheme gruvbox
set background=dark
set foldmethod=indent

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1

let g:indent_guides_enable_on_vim_startup = 1
"let g:netrw_liststyle = 1
"let g:netrw_banner = 0
"let g:netrw_winsize = 15

set updatetime=100

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-s> :NERDTreeToggle<CR>

nnoremap <SPACE> :noh<return>

"vim-plug
call plug#begin()
Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/nathanaelkane/vim-indent-guides'
Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'https://github.com/morhetz/gruvbox'
Plug 'https://github.com/lervag/vimtex'
call plug#end()

set termguicolors
let g:vimtex_compiler_progname = 'nvr'
let maplocalleader = "\\"
