map <F12> :NERDTreeToggle<CR>
set pastetoggle=<F2>

call plug#begin('~/.vim/plugged')
  Plug 'drewtempelmeyer/palenight.vim'
  Plug 'https://github.com/scrooloose/nerdtree'
  Plug 'mxw/vim-polyglot'
call plug#end()

set background=dark
colorscheme palenight

set tabstop=4
set softtabstop=4
set nocompatible                    " be iMproved, required
set title
set shortmess=a                     "Avoiding the 'Hit ENTER to continue' prompts
set wildmenu                        " Enhanced command line completion.
set wildmode=full                   " Use list:longest to complete files like a shell.
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.xpm,*.pyc,*.pyo           " Ignore certain files
set showcmd                         " Display incomplete commands.
set showmode                        " Display the mode you're in.
set number                          " Show line numbers.
set ruler                           " Show cursor position.
set cursorline                      " Highlight current line.
set encoding=utf-8                  " allow extended digraphs
set foldenable                      " enable folding
set incsearch                       " Highlight matches as you type.
set hlsearch                        " Highlight matches.
set wrap                            " Turn on line wrapping.
set scrolloff=3                     " Show 3 lines of context around the cursor.
set visualbell                      " No beeping.
set shortmess+=filmnrxoOtT          " abbrev. of messages (avoids 'hit enter')
set nobackup                        " Don't make a backup before overwriting a file.
set nowritebackup                   " And again.
set noswapfile                      " Use an SCM instead of swap files
set statusline=%F%m%=%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [LINE=%l]\ [Col=%v]\ [%p%%]
set laststatus=2                    " Show the status line all the time
set backspace=indent,eol,start      " http://vim.wikia.com/wiki/Backspace_and_delete_problems
set whichwrap=b,s,<,>,[,]           " enable to move over lines with right and left arrows
set expandtab
set copyindent                      " copy the previous indentation on autoindenting
set shiftround                      " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch                       " set show matching parenthesis
set autoindent
set undolevels=1000                 " use many levels of undo
set completeopt=menuone,menu,longest,preview " use a popup for completion
set history=200
set shiftwidth=4

let mapleader = ","

filetype off                        " required
language en_US.utf8                 " set user interface anguage to en
syntax on
filetype on
filetype plugin on
filetype indent on
