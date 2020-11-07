"function! LightlineModified()
    "return &modifiable && &modified ? '●' : ''
"endfunction
function! SetModifiedSymbol()
    if &modifiable
        if &ft !~? 'help' && &readonly
            if &modified
                hi LightlineLeft_active_2 ctermbg=0 cterm=bold ctermfg=13 guibg=#3D4C5F guifg=#985EFF
            else
                hi LightlineLeft_active_2 ctermbg=0 cterm=bold ctermfg=10 guibg=#3D4C5F guifg=#53E2AE
            endif
        else
            if &modified
                hi LightlineLeft_active_2 ctermbg=0 cterm=bold ctermfg=1 guibg=#3D4C5F guifg=#F48FB1
            else
                hi LightlineLeft_active_2 ctermbg=0 cterm=bold ctermfg=8 guibg=#3D4C5F guifg=#56687E
            endif
        endif
        return '●'
    else 
        return ''
    endif
endfunction

function! SetModifiedSymbolInactive()
    if &modifiable
        if &ft !~? 'help' && &readonly
            if &modified
                hi LightlineLeft_inactive_2 ctermbg=8 cterm=bold ctermfg=5 guibg=#56687E guifg=#BD99FF
            else
                hi LightlineLeft_inactive_2 ctermbg=8 cterm=bold ctermfg=2 guibg=#56687E guifg=#A1EFD3
            endif
        else
            if &modified
                hi LightlineLeft_inactive_2 ctermbg=8 cterm=bold ctermfg=1 guibg=#56687E guifg=#F48FB1
            else
                hi LightlineLeft_inactive_2 ctermbg=8 cterm=bold ctermfg=0 guibg=#56687E guifg=#3D4C5F
            endif
        endif
        return '●'
    else 
        return ''
    endif
endfunction

let g:lightline = {
            \ 'colorscheme': 'bruhlightline',
            \ 'subseparator': { 'left': '', 'right': '' },
            \ 'mode_map': {
            \   'n' : ' N ',
            \   'i' : ' I ',
            \   'R' : ' R ',
            \   'v' : ' V ',
            \   'V' : 'V-L',
            \   "\<C-v>": 'V-B',
            \   'c' : ' C ',
            \   's' : ' S ',
            \   'S' : 'S-L',
            \   "\<C-s>": 'S-B',
            \   't': ' T ',
            \ },
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ],
            \             [ 'filename' ],
            \             [ 'modified' ]],
            \ 'right': [ [ 'filetype' ],
            \            [ 'location' ],
            \            [ ] ] 
            \ },
            \ 'inactive': {
            \   'left': [ [  ],
            \             [  'filename' ],
            \             [ 'modifiedinactive' ]],
            \   'right': [ [ 'filetype' ], 
            \              [ 'location' ] ]
            \ },
            \ 'enable': {
            \   'tabline': 0
            \ },
            \ 'component': {
            \   'location': '%P|%L|%l:%-2c',
            \   'filetype': '%{&ft!=#""?&ft:"-"}',
            \   'placeholder': ' ● ',
            \ },
            \ 'component_function': {
            \   'readonly': 'LightlineReadonly',
            \   'modified': 'SetModifiedSymbol',
            \   'modifiedinactive': 'SetModifiedSymbolInactive',
            \ },
            \ }
