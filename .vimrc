" Startup
let s:colorful_term = (&term =~ "xterm") || (&term =~ "screen")

" Basics
set nocompatible
set background=dark
set fenc=utf-8
syntax on

" General
filetype plugin indent on
set backspace=indent,eol,start	
set history=9999
set nowrap
set number
set autoindent
set mouse=a

" GUI Settings
if has("gui_running")
    " Basics
    colorscheme molokai
    set mousehide
endif

" Term Settings
if s:colorful_term
    "256 color --
    let &t_Co=256
    colorscheme molokai
    " restore screen after quitting
    if has("terminfo")
        let &t_Sf="\ESC[3%p1%dm"
        let &t_Sb="\ESC[4%p1%dm"
    else
        let &t_Sf="\ESC[3%dm"
        let &t_Sb="\ESC[4%dm"
    endif
endif

" Odds n Ends
set ttymouse=xterm2
