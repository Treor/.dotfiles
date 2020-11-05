call which_key#register('\', "g:which_key_map")
 "vim-which-key mapping
nnoremap <silent> <leader> : <c-u>WhichKey '\'<CR>
vnoremap <silent> <leader> : <c-u>WhichKeyVisual '\'<CR>

let g:which_key_map = {}

hi WhichKey ctermfg=2 cterm=bold
hi WhichKeySeparator ctermfg=3 cterm=bold
hi WhichKeyGroup ctermfg=4 cterm=bold
hi WhichKeyDesc ctermfg=4 cterm=bold
hi WhichKeyFloating ctermfg=15 cterm=bold

let g:which_key_map.h = {
    \ 'name'    : '+GitGutter',
    \ 'p'       : ['<Plug>(GitGutterPreviewHunk)'    , 'PreviewHunk'],
    \ 's'       : ['<Plug>(GitGutterStageHunk)'    , 'StageHunk'],
    \ 'u'       : ['<Plug>(GitGutterUndoHunk)'    , 'UndoHunk'],
    \}

let g:which_key_map.c = {
    \ 'name'    : '+Comment',
    \ 'SPC'     : ['<plug>NERDCommenterToggle'    , 'Toggle'],
    \ '$'       : ['<plug>NERDCommenterToEOL'    , 'ToEOL'],
    \ 's'       : ['<plug>NERDCommenterSexy'    , 'Sexy'],
    \ 'a'       : ['<plug>NERDCommenterAltDelims'    , 'AlternativeDelimeters'],
    \ 'b'       : ['<plug>NERDCommenterAlignBoth'    , 'AlignBoth'],
    \ 'c'       : ['<plug>NERDCommenterComment'    , 'Comment'],
    \ 'A'       : ['<plug>NERDCommenterAppend'    , 'Append'],
    \ 'i'       : ['<plug>NERDCommenterInvert'    , 'Invert'],
    \ 'l'       : ['<plug>NERDCommenterAlignLeft'    , 'AlignLeft'],
    \ 'n'       : ['<plug>NERDCommenterNested'    , 'Nested'],
    \ 'm'       : ['<plug>NERDCommenterMinimal'    , 'Minimal'],
    \ 'y'       : ['<plug>NERDCommenterYank'    , 'Yank'],
    \ 'u'       : ['<plug>NERDCommenterUncomment'    , 'Uncomment'],
    \}

let g:which_key_map.q = {
    \ 'name'    : '+ConquerorOfCompletion',
    \ 'r'       : ['<Plug>(coc-rename)'    , 'Rename'],
    \ 'F'       : ['<Plug>(coc-format-selected)'    , 'FormatSelected'],
    \ 'a'       : ['<Plug>(coc-codeaction-selected)'    , 'CodeactionOnSelection'],
    \ 'c'       : ['<Plug>(coc-codeaction)'    , 'Codeaction'],
    \ 'f'       : ['<Plug>(coc-fix-current)'    , 'FixCurrent'],
    \}

let g:which_key_map.n = 'FileTree'

let g:which_key_map.t = {
    \ 'name'    : '+Colorizer',
    \ 'c'       : ['<Plug>Colorizer'    , 'Toggle'],
    \}

let g:which_key_map.w = {
    \ 'name'    : '+VimWiki',
    \ 'i'       : ['<Plug>VimwikiDiaryIndex'    , 'DiaryIndex'],
    \ 's'       : ['<Plug>VimwikiUISelect'    , 'UISelect'],
    \ 't'       : ['<Plug>VimwikiTabIndex'    , 'TabIndex'],
    \ 'w'       : ['<Plug>VimwikiIndex'    , 'Index'],
    \ '\'       : {
        \ 'name'    : '+Diary',
        \ 'i'       : ['<Plug>VimwikiDiaryGenerateLinks'    , 'DiaryGenerateLinks'],
        \ 'm'       : ['<Plug>VimwikiMakeTomorrowDiaryNote'    , 'MakeTomorrowDiaryNote'],
        \ 't'       : ['<Plug>VimwikiTabMakeDiaryNote'    , 'TabMakeDiaryNote'],
        \ 'w'       : ['<Plug>VimwikiMakeDiaryNote'    , 'MakeDiaryNote'],
        \ 'y'       : ['<Plug>VimwikiMakeYesterdayDiaryNote'    , 'MakeYesterdayDiaryNote'],
        \}
    \}
