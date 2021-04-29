""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" This `init.vim` config file only loads plugins and their settings.
" Further configuration files are in the `./plugin` folder.
" vim: foldmethod=marker
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug {{{
call plug#begin('~/.local/share/nvim/plugged')
Plug 'metalelf0/supertab'
Plug 'ntpeters/vim-better-whitespace'
Plug 'christoomey/vim-tmux-navigator'
Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
Plug 'zchee/deoplete-clang' | Plug 'Shougo/deoplete.nvim'
Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale'
Plug 'srstevenson/vim-picker'
Plug 'joonty/vdebug'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'mgee/lightline-bufferline'
Plug 'tpope/vim-commentary'
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
" twig {{{
" au BufNewFile,BufRead *.html setlocal ft=twig.html
" au BufNewFile,BufRead *.htm setlocal ft=twig.html
" }}}
" ultiSnips {{{
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"}}}
" Commentary {{{
" commentary.vim
autocmd FileType twig setlocal commentstring={#\ %s\ #}'
" }}}
" Limelight {{{
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight
" }}}
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

