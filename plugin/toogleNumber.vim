
"
" toogleNumber.vim
" toogle number and relativenumber options
"
"Shortcut:<leader>n
"Author: FuDesign2008@163.com
"Date: 2013-02-06
"



if &cp || exists("g:toogle_number")
    finish
endif
let g:toogle_number = 1
let s:save_cpo = &cpo
set cpo&vim


function! ToggleNumber()
    "You may has multi-windows, so it should only working on local buffer
    if (&l:relativenumber == 1)
        setlocal number
    else
        setlocal relativenumber
    endif
endfunction

nnoremap <LEADER>n :call ToggleNumber()<CR>


let &cpo = s:save_cpo

