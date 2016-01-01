" highlight trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" automatically remove trailing whitespace before write
function! StripTrailingWhitespace()
    normal mZ
    %s/\s\+$//e
    if line("'Z") != line(".")
        echo "Stripped whitespace\n"
    endif
    normal `Z
endfunction

" Apply based on filetype
autocmd BufWritePre *.css,*.scss,*.sass,*.less :call StripTrailingWhitespace()
autocmd BufWritePre *.js,*.jsx,*.js6,*.es6 :call StripTrailingWhitespace()
autocmd BufWritePre *.html,*.xhtml :call StripTrailingWhitespace()
autocmd BufWritePre *.yml,*.yaml :call StripTrailingWhitespace()
autocmd BufWritePre *.py :call StripTrailingWhitespace()
autocmd BufWritePre *.pp :call StripTrailingWhitespace()
autocmd BufWritePre *.md,*.markdown,*.mkd :call StripTrailingWhitespace()
autocmd BufWritePre *.rst :call StripTrailingWhitespace()
autocmd BufWritePre *.c,*.cpp,*.java,*.rb,*.go :call StripTrailingWhitespace()
