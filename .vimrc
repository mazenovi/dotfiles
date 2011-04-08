" VIM Configuration
" Original comes from Vincent Jousse
" Modified by William Durand <william.durand1@gmail.com>

" Set title on X window
set title

" Global
set hidden ruler wmnu             " Hide buffer instead of abandoning when unloading

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.
set wildignore=*/cache`/**,*/logs/**  " Ignore certain files

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set number                        " Show line numbers.
set ruler                         " Show cursor position.
set cursorline                    " Highlight current line.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set visualbell                    " No beeping.

set backupdir=~/.vim/tmp/,~/.tmp,~/tmp,/var/tmp,/tmp   " Keep swap files in one location
set directory=~/.vim/tmp/,~/.tmp,~/tmp,/var/tmp,/tmp   " Keep swap files in one location

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set noswapfile                    " Use an SCM instead of swap files

set laststatus=2                  " Show the status line all the time

" Make the view port scroll faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Remap the marker char
nnoremap ' `
nnoremap ` '

" Command and search pattern history
set history=1000

set undolevels=1000             " use many levels of undo

" Redifinition of map leader
let mapleader = ","

" Tabs and indentation. Yes, I like 2-space tabs.
set tabstop=2
set shiftwidth=2

nmap <leader>2 :set tabstop=2<cr>:set shiftwidth=2<cr>
nmap <leader>4 :set tabstop=4<cr>:set shiftwidth=4<cr>

" Tabs navigation like firefox
":nmap <C-S-t> :tabnew<CR>
":imap <C-S-t> <Esc>:tabnew<CR>
":imap <C-S-w> <Esc>:tabclose<CR>
:map <C-S-p> :tabprev<CR>
:map <C-S-n> :tabnext<CR>
:map <C-S-t> :tabnew<CR>
:map <C-S-w> :tabclose<CR>
:map <C-S-e> :NERDTree<CR>
:map <C-S-c> :NERDTreeClose<CR>

set expandtab
set copyindent    " copy the previous indentation on autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set autoindent

syntax on

filetype on
filetype plugin on
filetype indent on

" Allow extended digraphs
set encoding=utf-8

" Enable Python autocompletion
let g:pydiction_location = '/home/mazenovi/.vim/pydiction/complete-dict'
" Enable omnicompletion
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
