"sets
set autoindent
set background=dark
set backspace=indent,eol,start
set colorcolumn=80
set cursorline
set expandtab
set foldmethod=indent
set hidden
set hlsearch
set ignorecase
set incsearch
set nocompatible
set noshowmode
set number
set ruler
set shiftwidth=2
set shortmess+=IF
set showcmd
set showmatch
set smartcase
set tabstop=2
set termguicolors
set updatetime=100
set wrap

"color
colorscheme gruvbox
if $TERM == "screen"
	set t_Co=256
endif
filetype plugin on
syntax on

"plugin lets
let g:gruvbox_italic=1
let g:airline#extensions#tabline#enabled = 1 
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme = 'gruvbox'
let g:airline_powerline_fonts = 1
let g:indent_guides_enable_on_vim_startup = 0

"startup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"vim-plug
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/nathanaelkane/vim-indent-guides'
Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'https://github.com/morhetz/gruvbox'
Plug 'https://github.com/sheerun/vim-polyglot'
call plug#end()

"maps
map <C-s> :NERDTreeToggle<CR>
nnoremap <SPACE> :noh<return>
nnoremap <silent> <F12> :bn<CR>
nnoremap <silent> <F11> :bp<CR>
nnoremap <silent> <F10> :tabnext<CR>
nnoremap <silent> <F9>  :bp\|bd #<CR>

"other
let maplocalleader = "\\"

"truecolor https://stackoverflow.com/questions/62702766/termguicolors-in-vim-makes-everything-black-and-white
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
