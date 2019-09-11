" Vundle configrations
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Insert plugins here
Plugin 'VundleVim/Vundle.vim'
Plugin 'auto-pairs'
Plugin 'syntastic'

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

set pastetoggle=<F2>
