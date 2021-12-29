""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" This `init.vim` config file only loads plugins and their settings.
" Further configuration files are in the `./plugin` folder.
" vim: foldmethod=marker
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug {{{
call plug#begin('~/.local/share/nvim/plugged')
Plug 'metalelf0/supertab'
Plug 'ayu-theme/ayu-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'sheerun/vim-polyglot'
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
Plug 'Konfekt/Fastfold'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf'
call plug#end()
"}}}
" Plugins {{{
" Bettwer Whitespace {{{
" vim-better-whitespace (whitespace management)
autocmd BufWritePre * StripWhitespace
" }}}
" Completion {{{
" deoplete.nvim (autocompletion)
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#clang#libclang_path = "/usr/lib/libclang.so"
let g:deoplete#sources#clang#clang_header = "/usr/lib/clang"
let g:deoplete#sources#clang#std = {'c': 'c11', 'cpp': 'c++1z', 'objc': 'c11', 'objcpp': 'c++1z'}
"}}}
" Lightline {{{
" lightline.vim (better status bar)
let g:lightline = { 'colorscheme': 'one' }
let g:lightline.tabline = {'left': [['buffers']], 'right': [['']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type = {'buffers': 'tabsel'}

" lightline-bufferline
let g:lightline#bufferline#show_number = 2
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#unnamed = '[No Name]'
function! LightlineBufferline()
  call bufferline#refresh_status()
  return [ g:bufferline_status_info.before, g:bufferline_status_info.current, g:bufferline_status_info.after]
endfunction
"}}}
"Airline {{{
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
"}}}
" ALE {{{
" ale (linter)
let g:ale_fixers = {
    \'javascript': ['eslint'],
    \'php': ['phpcs'],
\}
"}}}
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
"
