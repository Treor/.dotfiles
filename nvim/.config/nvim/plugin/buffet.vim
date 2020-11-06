function! g:BuffetSetCustomColors()
    hi BuffetCurrentBuffer ctermfg=8 ctermbg=6 cterm=NONE
    hi BuffetActiveBuffer ctermfg=6 ctermbg=0 cterm=NONE
    hi BuffetBuffer ctermfg=8 ctermbg=0 cterm=NONE
    hi BuffetModCurrentBuffer ctermfg=8 ctermbg=6 cterm=NONE
    hi BuffetModActiveBuffer ctermfg=6 ctermbg=0 cterm=NONE
    hi BuffetModBuffer ctermfg=8 ctermbg=0 cterm=NONE
    hi BuffetTrunc ctermfg=8 ctermbg=11 cterm=bold
    hi BuffetTab ctermfg=8 ctermbg=4 cterm=NONE
endfunction
