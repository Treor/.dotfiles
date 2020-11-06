"function! LightlineModified()
    "return &modifiable && &modified ? '●' : ''
"endfunction
function! SetModifiedSymbol()
    if &modifiable
        if &ft !~? 'help' && &readonly
            if &modified
                hi LightlineLeft_active_2 ctermbg=0 cterm=bold ctermfg=13
            else
                hi LightlineLeft_active_2 ctermbg=0 cterm=bold ctermfg=10
            endif
        else
            if &modified
                hi LightlineLeft_active_2 ctermbg=0 cterm=bold ctermfg=1
            else
                hi LightlineLeft_active_2 ctermbg=0 cterm=bold ctermfg=8
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
                hi LightlineLeft_inactive_2 ctermbg=8 cterm=bold ctermfg=5
            else
                hi LightlineLeft_inactive_2 ctermbg=8 cterm=bold ctermfg=2
            endif
        else
            if &modified
                hi LightlineLeft_inactive_2 ctermbg=8 cterm=bold ctermfg=1
            else
                hi LightlineLeft_inactive_2 ctermbg=8 cterm=bold ctermfg=0
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
