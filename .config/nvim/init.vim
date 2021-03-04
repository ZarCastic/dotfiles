""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" This `init.vim` config file only loads plugins and their settings.
" Further configuration files are in the `./plugin` folder.
" vim: foldmethod=marker
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug {{{
call plug#begin('~/.local/share/nvim/plugged')
Plug 'metalelf0/supertab'
Plug 'ntpeters/vim-better-whitespace'
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'cloudhead/neovim-fuzzy'
call plug#end()
"}}}
" Plugins {{{
" Bettwer Whitespace {{{
" vim-better-whitespace (whitespace management)
autocmd BufWritePre * StripWhitespace
" }}}
" EasyMotion {{{
" vim-easymotion
let g:EasyMotion_smartcase = 1
let g:EasyMotion_startofline = 0
"}}}
" NERDTree {{{
map <C-n> :NERDTreeToggle<cr>
" }}}
" Fuzzy
nnoremap <C-p> :FuzzyOpen<CR>
" }}}
" Quick editing {{{
let mapleader = "\<Space>"
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>ez :e ~/.zshrc<cr>
nnoremap <leader>ei3 :e ~/.i3/config<cr>
nnoremap <leader>et  : e ~/.tmux.conf<cr>
" }}}

