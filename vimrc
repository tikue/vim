execute pathogen#infect()
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

set cursorline
set colorcolumn=100
set background=light
colorscheme github

set clipboard=unnamed

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
