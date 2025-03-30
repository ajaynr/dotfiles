"""""""""""""""""""
" neovim settings "
"""""""""""""""""""

" plugins
call plug#begin('~/.config/nvim/plugins/')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'agude/vim-eldar'
"Plug 'morhetz/gruvbox'
"Plug 'srcery-colors/srcery-vim',  {'as': 'srcery'}
"Plug 'fcpg/vim-fahrenheit'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'preservim/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'jpalardy/vim-slime'
Plug 'yetone/avante'
call plug#end()

"Preferences
source $HOME/.config/nvim/configs/preferences.vim

"Keybindings
source $HOME/.config/nvim/configs/keybindings.vim
