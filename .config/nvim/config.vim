let mapleader = "\<Space>"
" save on enter
nnoremap <cr> :w<cr>

" switch
nmap <leader><leader> <c-^>

" {{{ Copy and paste to system clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
vmap <Leader>p "+p
vmap <Leader>P "+P
nmap <Leader>p "+p
nmap <Leader>P "+P
" }}}

" fold all except current fold
nnoremap <leader>f mzzMzvzz15<c-e>`z

" autosave
au FocusLost * silent! wa

" mouse mode on
set mouse=a

set so=3

"Go to end/beginning
noremap H ^
noremap L $
"move screen
noremap K <C-y>
noremap J <C-e>

"Folds on tab
nnoremap <tab> za
"sudo cheat
cnoremap w!! w !sudo tee % > /dev/null
