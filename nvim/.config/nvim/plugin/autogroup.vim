augroup AutoGroup
autocmd!
augroup EN
command! -nargs=* Autocmd autocmd AutoGroup <args>
command! -nargs=* AutocmdFT autocmd AutoGroup FileType <args>
