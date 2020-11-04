"function! LightlineModified()
    "return &modifiable && &modified ? '●' : ''
"endfunction
function! SetModifiedSymbol() " {{{
    if &modifiable && &modified
        hi LightlineLeft_active_2 ctermbg=0 cterm=bold ctermfg=1
    else
        hi LightlineLeft_active_2 ctermbg=0 cterm=bold ctermfg=8
    endif
    return '●'
endfunction

function! SetModifiedSymbolInactive() " {{{
    if &modifiable && &modified
        hi LightlineLeft_inactive_2 ctermbg=8 cterm=bold ctermfg=1
    else
        hi LightlineLeft_inactive_2 ctermbg=8 cterm=bold ctermfg=0
    endif
    return '●'
endfunction

function! LightlineReadonly()
    return &ft !~? 'help' && &readonly ? '[RO]' : ''
endfunction

let g:lightline = {
            \ 'colorscheme': 'bruh',
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
            \             [ 'readonly', 'filename' ],
            \             [ 'modified' ]],
            \ 'right': [ [ 'filetype' ],
            \            [ 'location' ],
            \            [ ] ] 
            \ },
            \ 'inactive': {
            \   'left': [ [  ],
            \             [ 'readonly', 'filename' ],
            \             [ 'modifiedinactive' ]],
            \   'right': [ [ 'filetype' ], 
            \              [ 'location' ] ]
            \ },
            \ 'component': {
            \   'location': '%P/%L | %l:%-2c',
            \   'filetype': '%{&ft!=#""?&ft:""}',
            \   'placeholder': ' ● ',
            \ },
            \ 'component_function': {
            \   'readonly': 'LightlineReadonly',
            \   'modified': 'SetModifiedSymbol',
            \   'modifiedinactive': 'SetModifiedSymbolInactive',
            \ },
            \ }
