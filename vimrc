"
"
" Cameron Lane's .vimrc customization file
" Last change:	2012 November 5
"
runtime bundle/pathogen/autoload/pathogen.vim
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
set number		" Enable line numbers by default
set spell
set et
set sw=4
colorscheme desert

inoremap ii <Esc>
noremap <F5> :! pdflatex %<CR>
noremap <F6> :! /usr/bin/perl %<CR>
noremap <F7> :! /usr/bin/python %<CR>
noremap <F8> :! wc -c %<CR>
inoremap #!py #!/usr/bin/python<CR>
inoremap #!pl #!/usr/bin/perl <CR>
