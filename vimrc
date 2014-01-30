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

" Changing cursor shape per mode
" 1/0 -> blinking block
" 2   -> solid block
" 3   -> blinking underscore
" 4   -> solid underscore
if exists('$TMUX')
    " tmux will only forward escape sequences to the terminal
    let &t_SI .= "\<Esc>Ptmux;\<Esc>\<Esc>[4 q\<Esc>\\"
    let &t_EI .= "\<Esc>Ptmux;\<Esc>\<Esc>[2 q\<Esc>\\"
    autocmd VimLeave * silent !echo -ne "\033Ptmux;\033\033[0 q\033\\"
else
    let &t_SI .= "\<Esc>[4 q"
    let &t_EI .= "\<Esc>[2 q"
    autocmd VimLeave * silent !echo -ne "\033[0 q"
endif
