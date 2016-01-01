" Scss linter
let g:syntastic_scss_checkers = ['scss_lint']
" Relies on https://github.com/causes/scss-lint
nmap <buffer> <C-l> :!/usr/local/bin/scss-lint %<CR>
