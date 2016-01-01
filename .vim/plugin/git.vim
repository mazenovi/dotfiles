" gitgutter
" https://github.com/airblade/vim-gitgutter
" disabled by default
let g:gitgutter_enabled = 0
" see: https://github.com/airblade/vim-gitgutter#faq
highlight SignColumn ctermbg=235
highlight GitGutterAdd guifg=#009900 guibg=NONE ctermfg=2 ctermbg=235
highlight GitGutterChange guifg=#bbbb00 guibg=NONE ctermfg=3 ctermbg=235
highlight GitGutterDelete guifg=#ff2222 guibg=NONE ctermfg=1 ctermbg=235
" binds F3 to toggle git gutter
nnoremap <buffer> <F3> :GitGutterToggle<CR>
