" Cameron Lane's .vimrc customization file
" Last change: May 18, 2013
"
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#incubate()
call pathogen#infect()
call pathogen#helptags()

" Enable filetype plugins
filetype plugin on
filetype indent on

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

syntax enable
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
set expandtab
set sw=4
set tabstop=4
set autoindent
set smartindent
set shiftwidth=4
set encoding=utf8

colorscheme vividchalk "formerly I set it to more matte desert theme

inoremap ;; <Esc>
noremap <F5> :! pdflatex %<CR>
noremap <F6> :! /usr/bin/perl %<CR>
noremap <F7> :! python %<CR>
noremap <F8> :! wc -c %<CR>
" for snipmates plugin
let g:snips_author = 'Cameron Lane'
