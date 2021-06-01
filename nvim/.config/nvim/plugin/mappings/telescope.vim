" NORMAL

nnoremap <C-P> :Telescope find_files find_command=rg,--ignore,--hidden,--files<CR>

" LEADER

nnoremap <Leader><C-P> :Telescope<CR>
nnoremap <Leader>ff :Find<CR>
nnoremap <Leader>fa :Ag<space>
nnoremap <Leader>fr :Rg<space>

nnoremap <Leader>fll :Lines<CR>
nnoremap <Leader>flL :Telescope current_buffer_fuzzy_find<CR>

nnoremap <Leader>ft :Telescope tags<CR>
nnoremap <Leader>fT :Telescope current_buffer_tags<CR>

nnoremap <Leader>fgf :Telescope git_files<CR>
nnoremap <Leader>fg? :Telescope git_status<CR>
nnoremap <Leader>fgc :Telescope git_commits<CR>
nnoremap <Leader>fgC :Telescope git_bcommits<CR>

nnoremap <Leader>fB :Telescope buffers<CR>
nnoremap <Leader>fC :Telescope colorscheme<CR>
nnoremap <Leader>fm :Telescope marks<CR>
"nnoremap <Leader>fw :Windows<CR>
nnoremap <Leader>fc :Telescope commands<CR>
nnoremap <Leader>fM :Telescope keymaps<CR>
nnoremap <Leader>f? :Telescope help_tags<CR>
nnoremap <Leader>ft :Telescope filetypes<CR>

nnoremap <Leader>fhh :Telescope oldfiles<CR>
nnoremap <Leader>fh: :Telescope command_history<CR>
nnoremap <Leader>fh/ :Telescope search_history<CR>
