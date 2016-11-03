set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'skammer/vim-css-color'
Plugin 'altercation/vim-colors-solarized'
Plugin 'epage/vim-autohighlight'
Plugin 'tpope/vim-sensible'
Plugin 'Yggdroot/indentLine'
Plugin 'ciaranm/inkpot'
Plugin 'luochen1990/rainbow'
Plugin 'tomtom/tcomment_vim'
Plugin 'junegunn/seoul256.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'Raimondi/delimitMate'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'lokaltog/vim-distinguished'
Plugin 'rust-lang/rust.vim'
Plugin 'jpalardy/spacehi.vim'

"plugins for later learning and use
"Plugin 'scrooloose/nerdtree'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'rdnetto/YCM-Generator'
"Plugin 'ervandew/eclim'

let g:rainbow_active = 1

call vundle#end()
filetype plugin indent on

syntax enable
set bg=dark
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
colorscheme seoul256
set number                                  " show line numbers
set linebreak                               " break lines at word
set showbreak=+++                           " wrap-broken line prefix
set textwidth=80                            " line wrap (number of cols)
set showmatch                               " highlight matching brace
set visualbell                              " use visual bell (no beeping)

set hlsearch                                " highlight all search results
set smartcase                               " enable smart-case search
set ignorecase                              " always case-insensitive
set incsearch                               " searches for strings
                                            " incrementally
                                            
set autoindent                              " auto-indent new lines
set cindent                                 " use "C" style program indenting
set shiftwidth=4                            " number of auto-indent spaces
set smartindent                             " enable smart-indent
set smarttab                                " enable smart-tabs
set softtabstop=4                           " number of spaces per tab


set ruler                                   " show row and column information
set undolevels=1000                         " number of undo levels
set backspace=indent,eol,start              " backspace behaviour

set showcmd
set cursorline                              
set wildmenu
set lazyredraw
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

"mark column 80 to provide a visual aid in obeying to the 80 characters per
"line rule
set colorcolumn=80

"turn off search highlight
nnoremap <leader><space> :nohlsearch
"open/close folding
nnoremap <space> za
"save session
nnoremap <leader>s :mksession<CR>

map <C-J> <C-W>j<C-W>
map <C-K> <C-W>k<C-W>

"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%80v.\+/
