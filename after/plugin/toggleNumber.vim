
"
" toggleNumber.vim
" toggle number and relativenumber options
" defautl keymap:  <leader>n
"
"Author: FuDesign2008@163.com
"Date: 2013-06-19
"



if &cp || exists("g:toggle_number_loaded")
    finish
endif
let g:toggle_number_loaded = 1
let s:save_cpo = &cpo
set cpo&vim


function! s:ToggleNumber()
    " number status
    " 1 -> nonumber
    " 4 -> relative number
    " 2 -> number
    "
    if !exists('b:number_status')
        "You may has multi-windows, so it should only working on local buffer
        if &l:relativenumber == 1
            let b:number_status = 4
        elseif &l:number == 1
            let b:number_status = 2
        else
            let b:number_status = 1
        endif
    endif
    "
    if b:number_status == 1
        "set local number to make sure relative number like this (vim 7.4)
        "
        "   2
        "   1
        " 16  <- show current line number
        "   1
        "   2
        "
        setlocal number
        setlocal relativenumber
        let b:number_status = 4
    elseif b:number_status == 4
        setlocal norelativenumber
        setlocal number
        let b:number_status = 2
    elseif b:number_status == 2
        setlocal norelativenumber
        setlocal nonumber
        let b:number_status = 1
    endif
endfunction


command! ToggleNumber call s:ToggleNumber()

if !exists('g:toggle_number_custom_keymap')
    nnoremap <LEADER>nn :ToggleNumber<CR>
endif



let &cpo = s:save_cpo

