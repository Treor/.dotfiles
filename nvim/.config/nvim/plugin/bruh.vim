" =============================================================================
" Filename: autoload/lightline/colorscheme/darcula.vim
" Author: kkopec
" License: MIT License
" Last Change: 2017/02/11 21:18:54.
" =============================================================================

let s:gray = [ '#ffc3c1', 8 ]
"let s:gray = [ '#323F4E', 8 ]
let s:foreground = [ '#F8F8F2', 7 ]
let s:cursor = [ '#F8F8F2', 7 ]
let s:black = [ '#3D4C5F', 0 ]
let s:red = [ '#F48FB1', 1 ]
let s:green = [ '#A1EFD3', 2 ]
let s:yellow = [ '#F1FA8C', 3 ]
let s:blue = [ '#92B6F4', 4 ]
let s:purple = [ '#BD99FF', 5 ]
let s:cyan = [ '#87DFEB', 6 ]
let s:white = [ '#F8F8F2', 7 ]
let s:black_bright = [ '#56687E', 8 ]
let s:red_bright = [ '#EE4F84', 9 ]
let s:green_bright = [ '#53E2AE', 10 ]
let s:yellow_bright = [ '#F1FF52', 11 ]
let s:blue_bright = [ '#6498EF', 12 ]
let s:purple_bright = [ '#985EFF', 13 ]
let s:cyan_bright = [ '#24D1E7', 14 ]
let s:white_bright = [ '#E5E5E5', 15 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:black, s:cyan, 'bold' ], [ s:cyan, s:black ], [ s:gray, s:black ] ]
let s:p.normal.right = [ [ s:black, s:cyan, 'italic' ], [ s:cyan, s:black, 'italic' ], [ s:cyan, s:black, 'italic' ] ]
let s:p.inactive.left =  [ [ s:black_bright, s:black, 'bold' ], [ s:black, s:black_bright, 'bold' ] ]
let s:p.inactive.right = [ [ s:black, s:black_bright, 'italic' ], [ s:black, s:black_bright, 'italic' ] ]
let s:p.replace.left = [ [ s:black, s:red, 'bold' ], [ s:red, s:black ] ] 
"let s:p.replace.right = [ [ s:black, s:cyan ], [ s:cyan, s:black ] ]
let s:p.insert.left = [ [ s:black, s:red_bright, 'bold' ], [ s:red_bright, s:black ] ]
"let s:p.insert.right = [ [ s:black, s:cyan ], [ s:cyan, s:black ] ]
let s:p.visual.left = [ [ s:black, s:green_bright, 'bold' ], [ s:green_bright, s:black ] ]
"let s:p.visual.right = [ [ s:black, s:cyan ], [ s:cyan, s:black ] ]
let s:p.normal.middle = [ [ s:cyan, s:black ] ]
let s:p.inactive.middle = [ [ s:white, s:gray ] ]
let s:p.tabline.left = [ [ s:cyan, s:black ] ]
let s:p.tabline.tabsel = [ [ s:black, s:cyan ] ]
let s:p.tabline.middle = [ [ s:cyan, s:black ] ]
let s:p.tabline.right = [ [ s:black, s:cyan ] ]
let s:p.normal.error = [ [ s:red, s:black ] ]
let s:p.normal.warning = [ [ s:yellow, s:black ] ]

let g:lightline#colorscheme#bruh#palette = lightline#colorscheme#flatten(s:p)
