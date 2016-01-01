" override default behavior
" insert comment on new line
autocmd BufEnter * setlocal formatoptions+=c
autocmd BufEnter * setlocal formatoptions+=r
autocmd BufEnter * setlocal formatoptions+=o

" set options for gandi projects
autocmd BufEnter ~/Projects/gandi/* setlocal colorcolumn=80
autocmd BufEnter ~/Projects/gandi/* setlocal tabstop=2 shiftwidth=2 softtabstop=2

