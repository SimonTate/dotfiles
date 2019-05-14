highlight Comment ctermfg=green
set number
" Tab length control
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" ignore case on search
" https://stackoverflow.com/questions/2287440/how-to-do-case-insensitive-search-in-vim?rq=1
set ignorecase
set smartcase

" set the tags dir
set tags=./tags;,tags;

" Aliases
:command Q q!

" Git control
:let mapleader=","

fun! GitCommand(command)
    silent! !clear
    let tmpfile = tempname()
    exec "!git " . a:command . " % > " . tmpfile
    exec "vsplit " . tmpfile
    exec "!rm " . tmpfile
endfun 


map <leader>b :call GitCommand("blame") <CR>


