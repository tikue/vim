set nocompatible " required for Vundle
filetype off     " required for Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle; required
Plugin 'gmarik/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'davidhalter/jedi-vim'
Plugin 'rust-lang/rust.vim'
Plugin 'elzr/vim-json'

" All Vundle plugins must go above this line
call vundle#end()         " required for Vundle
filetype plugin indent on " required for Vundle

autocmd FileType xml setlocal shiftwidth=2 tabstop=2
set hidden
let g:racer_cmd = "/Users/tim/Documents/rust/racer/target/release/racer"
let $RUST_SRC_PATH="/Users/tim/Documents/rust/rust/src/"
syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set number
set ruler

set incsearch
set ignorecase
set smartcase
set backspace=2

set cursorline
set colorcolumn=100
hi ColorColumn ctermbg=lightblue guibg=lightblue
set background=dark
set t_Co=256

set clipboard=unnamed

colorscheme solarized

if !has("win32")
    " Changing cursor shape per mode
    " 1/0 -> blinking block
    " 2   -> solid block
    " 3   -> blinking underscore
    " 4   -> solid underscore
    if exists('$TMUX')
        " tmux will only forward escape sequences to the terminal
        let &t_SI .= "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
        let &t_EI .= "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
    else
        let &t_SI .= "\<Esc>]50;CursorShape=1\x7"
        let &t_EI .= "\<Esc>]50;CursorShape=0\x7"
    endif
endif
