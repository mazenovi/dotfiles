" Draw a line to 80 column chars
" thanks to https://coderwall.com/p/uu7-aa/vi-display-a-vertical-line-at-an-arbitrary-column-width

if exists('+colorcolumn')
    autocmd BufEnter * setlocal colorcolumn=80
else
    autocmd BufEnter * let w:m2=matchadd('ErrorMsg', '\%80v.\+', -1)
endif

