set nocompatible
filetype off

syntax on

set number "show line number
set expandtab
set tabstop=2
set shiftwidth=2
set ruler
set guifont=Sauce\ Code\ Powerline:h14
set showcmd

"Indent stuff
set smartindent
set autoindent

"Prefer a slightly higher line height
set linespace=3

"Set incremental searching"
set incsearch

"Highlight searching
set hlsearch

" case insensitive search
set ignorecase
set smartcase

"Hide MacVim toolbar by default
set go-=T

" Enable File Type
filetype on
filetype plugin on
filetype indent on

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" Using the mouse on a terminal.
if has('mouse')
  set mouse=a
  if has('mouse_sgr')
    set ttymouse=sgr
  elseif v:version > 703 || v:version is 703 && has('patch632') " I couldn't use has('mouse_sgr') :-(
    set ttymouse=sgr
  else
    set ttymouse=xterm2
  endif
endif

" colorscheme
colorscheme Tomorrow-Night-Eighties
set t_Co=256

" NERDTree shortcuts
map <F2> :NERDTreeToggle<CR>

" Powerline
let g:Powerline_symbols = 'fancy'
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'wombat'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_detect_paste=1


" My Plugins
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'gmarik/Vundle.vim'
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
Bundle 'c9s/colorselector.vim'
Bundle 'airblade/vim-gitgutter'


call vundle#end()
filetype plugin indent on

