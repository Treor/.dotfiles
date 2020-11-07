function! g:BuffetSetCustomColors()
    hi BuffetCurrentBuffer ctermfg=8 ctermbg=6 cterm=NONE guifg=#56687E guibg=#87DFEB
    hi BuffetActiveBuffer ctermfg=6 ctermbg=0 cterm=NONE guifg=#87DFEB guibg=#3D4C5F
    hi BuffetBuffer ctermfg=8 ctermbg=0 cterm=NONE guifg=#87DFEB guibg=#3D4C5F
    hi BuffetModCurrentBuffer ctermfg=8 ctermbg=6 cterm=NONE guifg=#56687E guibg=#87DFEB
    hi BuffetModActiveBuffer ctermfg=6 ctermbg=0 cterm=NONE guifg=#87DFEB guibg=#3D4C5F
    hi BuffetModBuffer ctermfg=8 ctermbg=0 cterm=NONE guifg=#56687E guibg=#3D4C5F
    hi BuffetTrunc ctermfg=8 ctermbg=11 cterm=bold guifg=#56687E guibg=#F1FF52
    hi BuffetTab ctermfg=8 ctermbg=4 cterm=NONE guifg=#56687E guibg=#92B6F4
endfunction
