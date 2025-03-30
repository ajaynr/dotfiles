" Change leader key
let mapleader = ","
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set colorcolumn=80

filetype plugin indent on
"set cursorline
set paste

set number
set relativenumber
set hlsearch
set clipboard+=unnamedplus

set noswapfile
set dir=~/tmp/

"let skip_defaults:vim=1
set viminfo=""

syntax on

" Do not add comment symbol automatically for new lines
autocmd FileType * set formatoptions-=cro

"set colorscheme
"set background=dark
"colorscheme srcery
"colorscheme fahrenheit
colorscheme eldar

"Slime
let g:slime_target = "zellij"

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='powerlineish'

"Srcery
let g:srcery_inverse_matches = 1
let g:srcery_inverse_match_paren = 1
let g:srcery_italic = 1
let g:srcery_italic_types = 1
