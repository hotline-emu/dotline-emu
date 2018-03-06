" Vundle configrations
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Insert plugins here
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'auto-pairs'
Plugin 'nerdtree'
Plugin 'syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'stanangeloff/php.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

" Defaults
filetype plugin indent on
syntax on                          " Enable syntax colors
set ruler                          " Enable the ruler
set autoindent                     " Enable auto-indentation
set shiftwidth=4                   " Shift size
set softtabstop=4                  " Tab size
set tabstop=4                      " Tab size
set expandtab                      " Expanded tabs
set encoding=utf-8                 " Set Encoding
set number                         " Show numbers
set nobackup                       " Do not generate backup
set noswapfile                      " Do not generate swap file
set scrolloff=10                   " When scrolling, leave buffer between unseen text
set wildmode=longest,list,full     " Wildmenu configs
set wildmenu                       " Show wildmenu
set wildignorecase                 " Wildmenu, ignore casing
set wrap linebreak nolist          " Soft wrap at edge of terminal
set hidden                         " Hidden buffers
set showmatch                      " Show matching brackets
set incsearch                      " Search setting
set hlsearch                       " Search setting
set ignorecase                     " Search setting
set backspace=indent,eol,start     " Backspace behavior
set cc=141                         " Color line at 141
match ErrorMsg '\s\+$'             " Show whitesapce
set mouse=a                        " Enable mouse click
set showmode                       " Status line info
set showcmd                        " Status line info
set laststatus=2                   " Always show
set cursorline                     " Highlight cursor line
hi CursorLine term=bold cterm=bold " Cursor line settings

" Air Line Configs
let g:airline_powerline_fonts = 1
let g:airline_theme = 'badwolf'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" NERDtree
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeWinSize = 30
map <C-n> :NERDTreeToggle<CR>

" Leader keybinds
let mapleader = "\\"
nnoremap <leader>q <esc>:q!<cr> " Ninja quit
nnoremap <leader>w <esc>:wq<cr> " Ninja write

