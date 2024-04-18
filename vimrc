" Required for vim to be iMproved
set nocompatible

" Determines filetype from name to allow intelligent auto-indenting, etc.
filetype indent plugin on

" Enable syntax highlighting
syntax on

" Better command-line completion
set wildmenu

" Use case insensitive search except when using capital letters
set ignorecase
set smartcase

" When opening a new line and no file-specific indenting is enabled,
" keep same indent as the line you're currently on
set autoindent

" Display line numbers on the left
set number

" Indentation options, change according to personal preference

" Number of visual spaces per TAB
set tabstop=4

" Number of spaces in TAB when editing
set softtabstop=4

" Number of spaces indented when reindent operations (>> and <<) are used
set shiftwidth=4

" Convert TABs to spaces
set expandtab

" Enable intelligent tabbing and spacing for indentation and alignment
set smarttab

" Highlight search terms
set hlsearch

" Enable incremental (partial) search
set incsearch

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Auto-read file that has been been changed outside of Vim
set autoread

" Enable mouse support. You should avoid relying on this too much, but it
" can sometimes be convenient.
" set mouse+=a

" Unbind some useless/annoying default key bindings.

" 'Q' in normal mode enters Ex mode. You almost never want this.
nmap Q <Nop>

