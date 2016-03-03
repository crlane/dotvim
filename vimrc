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

" add an 80 char bg highlight
au FileType python set colorcolumn=80
"
" if using gui, make sure powerline fonts are available
set guifont=Liberation_Mono_for_Powerline:h10

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=50  " keep 50 lines of command line history
set ruler       " show the cursor position all the time
set showcmd     " display incomplete commands
set incsearch   " do incremental searching
set spell

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
syntax enable
set background=dark
colorscheme solarized

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
noremap <F7> :! python %<CR>
"noremap <F8> :! wc -c %<CR>

let mapleader = "\<Space>"
" airline plugin
let g:airline#extensions#tabline#enabled = 1
let g:airline_detect_iminsert = 1
let g:airline_powerline_fonts = 1
let g:airline_section_z = '%3l/%L:%2c'
"let g:airline#extensions#tmuxline#enabled = 0
"
"tmuxline
"let g:tmuxline_powerline_separators = 0

" vim-gist
let g:gist_post_private = 1
let g:gist_show_privates = 1
let g:gist_api_url = 'https://github.atl.pindrop.net/api/v3'
let g:gist_use_password_in_gitconfig = 0
let g:gist_clip_command = 'pbcopy'

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args = '--ignore=E501'
" make syntastic place nice with vim-go
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }


" ctrlp
set wildignore+=*/node_modules/*,*/tmp/*,*.so,*.swp,*.zip,/*/bower_components/*
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|)$',
  \ 'file': '\v\.(exe|so|dll|pyc)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

let g:ctrlp_use_caching = 0

if executable('ag')
set grepprg=ag\ --nogroup\ --nocolor

    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
    let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
    let g:ctrlp_prompt_mappings = {
        \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
        \ }
endif

"
" set 2 space tabs for the following filetypes
autocmd FileType ruby,haml,eruby,yaml,sass,cucumber,javascript,html set ai sw=2 sts=2 et

" highlight json as though it were JS
autocmd BufNewFile,BufRead *.json setlocal ft=javascript

" the following extensions should be treated like ruby
autocmd BufNewFile,BufRead {Gemfile,VagrantFile,*.pp} set ft=ruby

" cython files should be treated like python
" autocmd BufNewFile,BufRead *.pyx setlocal ft=python


" " Go uses tabs not spaces
autocmd FileType go setlocal noexpandtab
autocmd FileType go setlocal tabstop=8

" highlight trailing whitespace in any filetype
hi ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/



" gist-vim githubenterprise host
let g:gist_api_url = 'https://github.atl.pdrop.net/api/v3'
" gist-vim detect filetype from filename
let g:gist_detect_filetype = 1
" private by default
let g:gist_post_private = 1

" prefer ag over ack for ack.vim
if executable('ag')
    let g:ackprg = 'ag --nogroup --nocolor --column'
endif

nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-l> :wincmd l<CR>
"
" format with goimports instead of gofmt
let g:go_fmt_command = "goimports"
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

