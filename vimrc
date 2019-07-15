set number
" Tab length control
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set autoread
colorscheme darkblue 

highlight Comment ctermfg=green
"ignore case on search
" https://stackoverflow.com/questions/2287440/how-to-do-case-insensitive-search-in-vim?rq=1
set ignorecase
set smartcase

" set the tags dir
set tags=./tags;,tags;

" Aliases
:command Q q!

" Git control
:let mapleader=","

fun! GitCommand(command, window)
 "   silent! !clear
    let tmpfile = tempname()
    exec "!git " . a:command . " % > " . tmpfile
    exec a:window . " " . tmpfile
"    exec "!rm " . tmpfile
endfun 

fun! CHeader(command)
    let file = expand('%:r') . ".h"
    if filereadable(file)
        exec a:command . " " . file
    else
        echom "Couldn't find header file"
    endif    
endfun

fun! CSource(command)
    let file = expand('%:r') . ".c"
    if filereadable(file)
        exec a:command . " " . file
    elseif filereadable(file . "pp")
        exec a:command . " " . file . "pp"
    else
        echom "Couldn't find C file"
    endif 
endfun

" Git status bar
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

function! GetCommentCharacter()
    let comment = ""
    if &filetype ==# "cpp" || &filetype ==# "c" || &filetype ==# "javascript"
        let comment="//"
    elseif &filetype ==# "vim"
        let comment='"'
    elseif &filetype ==# "sh"
        let comment='#'
    else
        echom "Unrecognised filtype : " . &filetype
    endif
    return comment
endfunction

function! Comment()
    let comment = GetCommentCharacter()
    if comment != ""
        exec ":norm ^i" . comment
    endif
endfunction

function! UnComment()
    let comment = GetCommentCharacter()
    if comment != ""
        exec ":norm ^" . strlen(comment) . "x"
    endif
endfunction

set laststatus=2
set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m
set statusline+=%=
set statusline+=%#CursorColumn#

map <leader>b :silent :call GitCommand("blame", ":vsp") <CR>
map <leader>n :silent :call GitCommand("blame", ":e") <CR>
map <leader>reu oReuse-Change-Id: <ESC>
map <leader>h :call CHeader(":e") <CR>
map <leader>c :call CSource(":e") <CR>
map <leader>vsph :call CHeader(":vsp") <cr>
map <leader>vspc :call CSource(":vsp") <cr>
map <leader>sph :call CHeader(":sp") <cr>
map <leader>spc :call CSource(":sp") <cr>
map <leader>light :colorscheme default<cr>
map <leader>dark :colorscheme darkblue<cr>
" Conflict finder 
map <leader>x /^<<<<<<<<cr> 
map <leader>\ :call Comment()<cr> 
map <leader>` :call UnComment()<cr> 


