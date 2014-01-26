call pathogen#incubate()
call pathogen#helptags()

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

set colorcolumn=100
set cursorline
set background=light
colorscheme github

execute pathogen#infect()
