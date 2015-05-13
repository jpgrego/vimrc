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
Plugin 'Valloric/YouCompleteMe'
"Plugin 'rdnetto/YCM-Generator'
Plugin 'ervandew/eclim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'junegunn/seoul256.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'Raimondi/delimitMate'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'lokaltog/vim-distinguished'
Plugin 'rust-lang/rust.vim'
Plugin 'jpalardy/spacehi.vim'
"Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

syntax enable
set bg=dark
let g:solarized_termcolors=256
"let g:solarized_termtrans=1
colorscheme seoul256
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

"turn off search highlight
nnoremap <leader><space> :nohlsearch
"open/close folding
nnoremap <space> za
"save session
nnoremap <leader>s :mksession<CR>


au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
au Syntax * RainbowParenthesesLoadChevrons

"syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

map <C-J> <C-W>j<C-W>
map <C-K> <C-W>k<C-W>

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.\+/
