" Quickly insert an empty line without entering insert mode
nnoremap <CR> o<Esc>
nnoremap <S-CR> O<Esc>

" Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" Go to first non-blank character
map 00 ^

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"vim-slime
nmap <C-s> <Plug>SlimeRegionSend

"NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeTabsOpen<CR>
nnoremap <C-t> :NERDTreeTabsToggle<CR>
