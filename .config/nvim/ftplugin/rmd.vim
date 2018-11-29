nnoremap <C-b> : !echo "require(rmarkdown); render('%')" \| R --vanilla && pkill -HUP mupdf<cr>

set tabstop=2
set shiftwidth=2
