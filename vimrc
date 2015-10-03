"Cameron Lane's .vimrc customization file
" Last change: October 2, 2015
"
" enable pathogen 
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect('bundle/{}')
call pathogen#helptags()

" Enable filetype plugins
filetype plugin on
filetype indent on

" always work with unicode files
set encoding=utf-8
set fileencoding=utf-8

" if using gui, make sure powerline fonts are available
set guifont=Liberation_Mono_for_Powerline:h10

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=50  " keep 50 lines of command line history
set ruler       " show the cursor position all the time
set showcmd     " display incomplete commands
set incsearch   " do incremental searching

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
colorscheme molokai "formerly I set it to more matte desert theme
set background=dark

syntax enable
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

set showmatch   " Show matching brackets.

set incsearch   " Incremental search
set autowrite   " Automatically save before commands like :next and :make

set number      " Enable line numbers by default

" prefer spaces over tabs
set tabstop=4 shiftwidth=4 expandtab

" always show status bar (helpful for airline)
set laststatus=2


" don't leave the home row
inoremap jj <Esc>
"
"noremap <F5> :! pdflatex %<CR>
"noremap <F6> :! /usr/bin/perl %<CR>
"noremap <F7> :! python %<CR>
"noremap <F8> :! wc -c %<CR>

" airline plugin
let g:airline_theme='molokai'
let g:airline#extensions#tabline#enabled = 1
let g:airline_detect_iminsert = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tmuxline#enabled = 0
"
"tmuxline
"let g:tmuxline_powerline_separators = 0

" vim-gist
let g:gist_post_private = 1
let g:gist_show_privates = 1
let g:gist_api_url = 'https://github.atl.pindrop.net/api/v3'
let g:gist_use_password_in_gitconfig = 0
let g:gist_clip_command = 'pbcopy'

