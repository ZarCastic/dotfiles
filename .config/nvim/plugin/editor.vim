" turn off vi compatibility
"set nocompatible

" wildmenu
set wildmenu
set wildmode=longest:full,list:full,list:longest
set wildchar=<TAB>


" tabs
set expandtab
set autoindent
set smarttab
set shiftwidth=4
set tabstop=4

" indentation based on filetype
filetype plugin indent on

" search
set incsearch
set hlsearch
set ignorecase
set smartcase

"autochdir
set autochdir

" autosave
au FocusLost * silent! wa

" mouse mode on
set mouse=a

" History and undo
set history=1000
set undofile
set undodir=~/.config/nvim/undo
set undolevels=1000
set undoreload=10000
set backupdir=~/.config/nvim/backup

" default encoding
set enc=utf-8

" don't auto-conceal stuff
set conceallevel=0

let g:tex_conceal = "ab"

" disable netrw history
let g:netrw_dirhistmax = 0

set colorcolumn=80
set updatetime=500
set mouse=a
set foldmethod=syntax
set showcmd
set hidden
set ttyfast
"Go to end/beginning
noremap H ^
noremap L $
"move screen
noremap K 
noremap J 

"Folds on tab
nnoremap <tab> za
"sudo cheat
cnoremap w!! w !sudo tee % > /dev/null

"keep space
set so=3

"split sanely
set splitbelow
set splitright

" Move between Splits
map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l

"{{{splitting
" Vertical split
nnoremap <leader>v :sp<cr>
" Horizontal split
nnoremap <leader>s :vs<cr>
"}}}
"
