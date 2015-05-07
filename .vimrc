"-------------------------------------------------
" file:     ~/.vimrc
" author:   James McCabe
"-------------------------------------------------

" Reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its contents. 
" Use this to allow intelligent auto-indenting for each filetype, and for plugins that are filetype specific.
filetype plugin on
filetype indent on

" Enable syntax highlighting
syntax on

" Set zenburn theme ~/.vim/colors/zenburn.vim
colors zenburn

" Line numbers on
set number

" Enhance command-line completion
set wildmenu

" UTF-8 encoding for all new files
set encoding=utf-8

" Highlight current line
set cursorline

" Allow backspace in insert mode
set backspace=2

" Don't wrap lines
set nowrap



" Show the filename in the window titlebar
set title

" status bar info and appearance
set statusline=\ \%f%m%r%h%w\ ::\ %y\ [%{&ff}]\%=\ [%p%%:\ %l/%L]\ 
set laststatus=2
set cmdheight=1
