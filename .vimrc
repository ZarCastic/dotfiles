" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
" {{{
call plug#begin('~/.vim/plugged')
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'preservim/nerdtree'  | Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf', { 'dir': '~/bin/.fzf', 'do': './install --all' }
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
Plug 'ycm-core/YouCompleteMe' | Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'Chiel92/vim-autoformat'
Plug 'nanotech/jellybeans.vim'
Plug 'Raimondi/delimitMate' 
call plug#end()
" }}}
" UltiSnips{{{
let g:UltiSnipsExpandTrigger="<c-u>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"}}}
" FZF {{{
nnoremap <C-p> :FZF<CR>
"}}}
" lightline {{{
set laststatus=2
let g:lightline = {
	\ 'colorscheme': 'jellybeans',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
     	\             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
     	\ },
     	\ 'component_function': {
     	\   'gitbranch': 'gitbranch#name'
     	\ },
     	\ }
" }}}
" NerdTREE {{{
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <C-T> : NERDTreeToggle<CR>
" }}}
" YCM {{{
let g:ycm_use_clangd = 1
" }}}
" GitGutter {{{
let g:gitgutter_enabled = 1
" }}}
" Editor {{{
set backspace=indent,eol,start
" Quick editing {{{
let mapleader = "\<Space>"
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>ez :e ~/.zshrc<cr>
nnoremap <leader>ei3 :e ~/.i3/config<cr>
nnoremap <leader>et  : e ~/.tmux.conf<cr>
" }}}
" Wildmenu {{{
set wildmenu
set wildmode=longest:full,list:full,list:longest
set wildchar=<TAB>
" }}}
" tabs {{{
set expandtab
set autoindent
set smarttab
set shiftwidth=4
set tabstop=4
" }}}
" indentation based on filetype
filetype plugin indent on
colorscheme jellybeans
" search {{{
set incsearch
set hlsearch
set ignorecase
set smartcase
" }}}
" autosave
au FocusLost * silent! wa
" History and undo {{{
set history=1000
set undofile
set undodir=~/.vim/undo
set undolevels=1000
set undoreload=10000
set backupdir=~/.vim/backup
"}}}
" Misc {{{
set foldmethod=syntax
set showcmd
set hidden
set ttyfast
set so=3
inoremap jj <esc>
inoremap kk <esc>
set relativenumber
" }}}
" Save on Enter
nnoremap <cr> :w<cr>
" switch
nnoremap <leader><leader> <c-^>
" Sane Movement {{{
noremap H ^
noremap L $
"move screen
noremap K 
noremap J 
" }}}
"Folds on tab
nnoremap <tab> za
"sudo cheat
cnoremap w!! w !sudo tee % > /dev/null
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
" Splits {{{
map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l
nnoremap <leader>v :sp<cr>
nnoremap <leader>s :vs<cr>
"split sanely
set splitbelow
set splitright
" }}}
" }}}

