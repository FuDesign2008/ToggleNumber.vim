
"
" toggleNumber.vim
" toggle number and relativenumber options
"
"Shortcut:<leader>n
"Author: FuDesign2008@163.com
"Date: 2013-02-06
"



if &cp || exists("g:toggle_number")
    finish
endif
let g:toggle_number = 1
let s:save_cpo = &cpo
set cpo&vim


function! s:ToggleNumber()
    "You may has multi-windows, so it should only working on local buffer
    if (&l:relativenumber == 1)
        setlocal number
    else
        setlocal relativenumber
    endif
endfunction


command! TNumber call s:ToggleNumber()

if !exists('g:toggle_number_custom_keymap')
    nnoremap <LEADER>n :TNumber<CR>
endif



let &cpo = s:save_cpo

