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
 "   silent! !clear
    let tmpfile = tempname()
    exec "!git " . a:command . " % > " . tmpfile
    exec "vsplit " . tmpfile
"    exec "!rm " . tmpfile
endfun 

fun! CHeader()
    let file = expand('%:r') . ".h"
    if filereadable(file)
        exec ":e " . file
    endif    
endfun

fun! CSource()
    let file = expand('%:r') . ".c"
    if filereadable(file)
        exec ":e " . file
    endif
endfun


map <leader>b :silent :call GitCommand("blame") <CR>
map <leader>reu oReuse-Change-Id: <ESC>
map <leader>h :call CHeader() <CR>
map <leader>c :call CSource() <CR>
