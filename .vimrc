set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'JarrodCTaylor/vim-256-color-schemes'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'

" command t
"Plugin 'git://git.wincent.com/command-t.git'
" ctrlp.vim is a pure vimscript replacement for command-t
Plugin 'kien/ctrlp.vim'

" Install ultisnips.
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'mustache/vim-mustache-handlebars'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Set title on X window
set title

language en_US.utf8                 " set user interface anguage to en

syntax on

filetype on
filetype plugin on
filetype indent on

" Global
" set hidden ruler wmnu               " Hide buffer instead of abandoning when unloading

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
"set ignorecase                      " set case insensitivity
"set smartcase                       " unless there's a capital letter
set wrap                            " Turn on line wrapping.
set scrolloff=3                     " Show 3 lines of context around the cursor.

set visualbell                      " No beeping.
set shortmess+=filmnrxoOtT          " abbrev. of messages (avoids 'hit enter')

set nobackup                        " Don't make a backup before overwriting a file.
set nowritebackup                   " And again.
set noswapfile                      " Use an SCM instead of swap files

set statusline=%F%m%=%r%h%w%{fugitive#statusline()}\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [LINE=%l]\ [Col=%v]\ [%p%%]
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

if version >= 730
    set noundofile                  " Don't keep a persistent undofile
endif

" Color scheme
let &t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" http://vim.wikia.com/wiki/Toggle_auto-indenting_for_code_paste
" F2 = toggle paste mode
nnoremap <F2> :set invpaste paste?<Enter>
imap <F2> <C-O><F2>
set pastetoggle=<F2>

" make the view port scroll faster
"nnoremap <C-e> 3<C-e>
"nnoremap <C-y> 3<C-y>
"nnoremap <C-p> 3<C-p>

" resize splitted views faster
"nnoremap <C-w>< 5<C-w><
"nnoremap <C-w>> 5<C-w>>

" remap the marker char
nnoremap ' `
nnoremap ` '

" command and search pattern history
set history=200

" redifinition of map leader
let mapleader = ","

" make plugins smoother
"set lazyredraw

" always replace all occurences of a line
" set gdefault

" Tabs and indentation
set tabstop=4
set shiftwidth=4
set softtabstop=4

" convenient mapping to swith tab/indent settings
nmap <leader>2 :set tabstop=2<cr>:set shiftwidth=2<cr>:set softtabstop=2<cr>
nmap <leader>4 :set tabstop=4<cr>:set shiftwidth=4<cr>:set softtabstop=4<cr>

" sudo to write
command W w !sudo tee % > /dev/null

" pull word under cursor into LHS of a substitute (for quick search and replace)
nmap <leader>zs :%s/<C-r>=expand("<cword>")<CR>/

" pull word under cursor into Ack for a global search
map <leader>za :Ack "<C-r>=expand("<cword>")<CR>"

" start a substitute
map <leader>s :%s/

" ack
nmap <leader>a :Ack<space>

" Clear search highlight
map <silent> <leader>/ :let @/=""<CR>:echo "Cleared search register."<cr>

" Powerline
"let g:Powerline_symbols = 'fancy'

" airline
" -------
"
" If there is a problem with powerline fancy fonts, type the following in console
"
" gsettings set org.gnome.desktop.interface monospace-font-name 'Ubuntu Mono for Powerline 13'
"
" source: http://blog.vanutsteen.nl/2013/02/06/set-the-ubuntu-mono-patched-powerline-font-as-system-font-in-ubuntu/
let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'

" Ctags
set nocp
set tags=tags
map <silent><leader><Left> <C-T>
map <silent><leader><Right> <C-]>
map <silent><leader><Up> <C-W>]

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

" When editing a file, always jump to the last known cursor position.
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" invisible character
nmap <leader>l :set list!<CR>
set listchars=nbsp:¤,tab:>-,trail:¤,extends:>,precedes:<,eol:¬,trail:·

" Does not work under version 7.1.6
if version >= 716
    autocmd BufWinLeave * call clearmatches()
endif

" tab mappings
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove<cr>
map <leader>tr :tabrewind<cr>

" create directory if not exists
au BufWrite * :call <SID>MkdirsIfNotExists(expand('<afile>:h'))
function! <SID>MkdirsIfNotExists(directory)
    if(!isdirectory(a:directory))
        call system('mkdir -p '.shellescape(a:directory))
    endif
endfunction

" do not auto insert comment chars on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Gist
let g:gist_clip_command     = 'pbcopy'
let g:gist_detect_filetype  = 1
let g:gist_post_private     = 1

" ctrlp
" Replaced ctrlp.vim with command-t
"let g:ctrlp_map                 = '<leader>t'
"let g:ctrlp_clear_cache_on_exit = 0

" c++
au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set ft=cpp

" reStructuredText
au! BufRead,BufNewFile *.rst set filetype=rst

" make
map <leader>m :make<cr>

map <F12> :NERDTreeToggle<CR>

" tmux key binding
" thanks to http://stackoverflow.com/questions/15445481/mapping-arrow-keys-when-running-tmux
if &term =~ '^screen' && exists('$TMUX')
    " do not use mouse
    set mouse=""
    " tmux knows the extended mouse mode
    " set ttymouse=xterm2
    " tmux will send xterm-style keys when xterm-keys is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
    execute "set <xHome>=\e[1;*H"
    execute "set <xEnd>=\e[1;*F"
    execute "set <Insert>=\e[2;*~"
    execute "set <Delete>=\e[3;*~"
    execute "set <PageUp>=\e[5;*~"
    execute "set <PageDown>=\e[6;*~"
    execute "set <xF1>=\e[1;*P"
    execute "set <xF2>=\e[1;*Q"
    execute "set <xF3>=\e[1;*R"
    execute "set <xF4>=\e[1;*S"
    execute "set <F5>=\e[15;*~"
    execute "set <F6>=\e[17;*~"
    execute "set <F7>=\e[18;*~"
    execute "set <F8>=\e[19;*~"
    execute "set <F9>=\e[20;*~"
    execute "set <F10>=\e[21;*~"
    execute "set <F11>=\e[23;*~"
    execute "set <F12>=\e[24;*~"
endif
