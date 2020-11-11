call which_key#register('\', "g:which_key_map")
 "vim-which-key mapping
nnoremap <silent> <leader> : <c-u>WhichKey '\'<CR>
vnoremap <silent> <leader> : <c-u>WhichKeyVisual '\'<CR>

let g:which_key_map = {}

hi WhichKey ctermfg=2 cterm=bold guifg=#A1EFD3
hi WhichKeySeparator ctermfg=3 cterm=bold guifg=#F1FA8C
hi WhichKeyGroup ctermfg=4 cterm=bold guifg=#92B6F4
hi WhichKeyDesc ctermfg=4 cterm=bold guifg=#92B6F4
hi WhichKeyFloating ctermfg=15 cterm=bold guifg=#E5E5E5
