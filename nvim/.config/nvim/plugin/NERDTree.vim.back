" Open NERDTree when no file(s) is selectedd
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" close vim if the only window left open is a NERDTree

" Open NERDTree with Ctrl+n
map <leader>n :NERDTreeToggle<CR> 

" Would be useful mappings, but they interfere with my line movement bindings (<C-j> and <C-k>).
let g:NERDTreeMapJumpPrevSibling='<Nop>'
let g:NERDTreeMapJumpNextSibling='<Nop>'

" Quit nertree when a file is opened.
let NERDTreeQuitOnOpen = 1

" Ignore turds left behind by Mercurial.
let g:NERDTreeIgnore=['\.orig']

" The default of 31 is just a little too narrow.
let g:NERDTreeWinSize=40

" Disable display of '?' text and 'Bookmarks' label.
let g:NERDTreeMinimalUI=1

" Let <Leader><Leader> (^#) return from NERDTree window.
let g:NERDTreeCreatePrefix='silent keepalt keepjumps'

" Single-click to toggle directory nodes, double-click to open non-directory
" nodes.
let g:NERDTreeMouseMode=2

if has('autocmd')
  augroup WincentNERDTree
    autocmd!
    autocmd User NERDTreeInit call autocmds#attempt_select_last_file()
  augroup END
endif

"call plugin#lazy({
      "\   'pack': 'nerdtree',
      "\   'plugin': 'NERD_tree.vim',
      "\   'commands': {
      "\        'NERDTree': '-n=? -complete=dir -bar',
      "\        'NERDTreeCWD': '-n=0 -bar',
      "\        'NERDTreeClose': '-n=0 -bar',
      "\        'NERDTreeFind': '-n=0 -bar',
      "\        'NERDTreeFocus': '-n=0 -bar',
      "\        'NERDTreeFromBookmark': '-n=1 -bar',
      "\        'NERDTreeMirror': '-n=0 -bar',
      "\        'NERDTreeToggle': '-n=? -complete=dir -bar',
      "\   },
      "\   'nnoremap': {
      "\        '<silent> -': ":silent edit <C-R>=empty(expand('%')) ? '.' : fnameescape(expand('%:p:h'))<CR><CR>",
      "\        '<C-_>': ':NERDTreeFind<CR>'
      "\   }
      "\ })

nnoremap <silent> - :silent edit <C-R>=empty(expand('%')) ? '.' : fnameescape(expand('%:p:h'))<CR><CR>
nnoremap <C-_> :NERDTreeFind<CR>
noremap <F5> :NERDTreeToggle<cr><c-w>p
