" Let's not be backwards compatible with vi
set nocompatible
"Turn on line numbers
set number
" Turn on sytanx highlighting
syntax on

"Let's make encoding UTF-8 by default
set encoding=utf-8
set fileencoding=utf-8


filetype off

" Tab are four spaces soft and shiftwidth will move four characters.
set tabstop=4
set softtabstop=4
set shiftwidth=4

set autoindent " Preserve indentation
set smartindent " smart indetation for languages that support it

set mouse=a

" Search higlighting on by default
set hlsearch
set incsearch
set smartcase " Case sensitive search when an upper case is included other wise ignore case
set relativenumber " Set relative line numbers

" Turn off folds by default
set foldlevelstart=99 

" Required for operations modifying multiple buffers like rename.
set hidden

" Display a line on the same line as the cursor
setlocal cursorline!

" Set if we wish to start using folds more often. :smile:
"set foldcolumn=2

set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set list

