
"███╗ ██╗███████╗ ██████╗ ██╗       ██╗██╗███╗   ███╗
"████╗  ██║██╔════╝██╔═══██╗██║     ██║██║████╗ ████║
"██╔██╗ ██║█████╗  ██║   ██║██║     ██║██║██╔████╔██║
"██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
"██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
"╚═╝    ╚═══╝╚══════╝ ╚═════╝       ╚═══╝  ╚═╝╚═╝       ╚═╝

" Plugin dependencies {{{

" Installs Plug if it isn't allready installed

if has('vim_starting')
    set runtimepath+=~/.config/nvim/plugged/vim-plug
    if !isdirectory(expand('$NVIM_HOME') . '/plugged/vim-plug')
        call system('mkdir -p ~/.config/nvim/plugged/vim-plug')
        call system('git clone https://github.com/junegunn/vim-plug.git ~/.config/nvim/plugged/vim-plug/autoload')
        "       echo system('"Installing vim-plug"')
    end
endif

"if !has('python') && !has('pip')
" call system('pip install --upgrade pip')
" call system('pip install neovim --upgrade')
    "echo system('Installing upgrade pip and install neovim')
"endif

"if !has('python3') && !has('pip3')
" call system('pip3 install --upgrade pip')
" call system('pip3 install neovim --upgrade')
    "echo system('Installing upgrade pip3 and install neovim')
"endif

"if !has('npm')
" call system('sudo pacman -S nodejs npm')
    "echo system('installing nodejs and npm')
"endif

"if !has('eslint')
" call system('sudo npm install -g eslint')
    "echo system('installing eslint')
"endif

"let g:python_host_skip_check = 1
"let g:python2_host_skip_check = 1
"let g:python3_host_skip_check = 1

"if executable('python2.7')
    "let g:python_host_prog = system('which python')
" let g:python_host_prog = /usr/bin/python2.7"
"endif

"if executable('python3')
    "let g:python3_host_prog = system('which python3')
" let g:python3_host_prog = /usr/bin/python3"
"endif

" }}}

" Plugin section {{{
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'

call plug#begin('~/.config/nvim/plugged')
    Plug 'tpope/vim-eunuch'     " UNIX commands in VIM
    Plug 'tpope/vim-tbone'      " TMUX
    Plug 'tpope/vim-dadbod'     " DataBases
    Plug 'tpope/vim-vinegar'
    Plug 'tpope/vim-obsession'
    Plug 'tpope/vim-endwise'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-speeddating'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'    " GitHub (extension for vim-fugitive)
    Plug 'scrooloose/nerdcommenter'
    Plug 'scrooloose/nerdtree'
    Plug 'xolox/vim-session'
    Plug 'xolox/vim-misc'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'gregsexton/MatchTag'
    Plug 'jceb/vim-orgmode'
    Plug 'majutsushi/tagbar'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'honza/vim-snippets'
    Plug 'matze/vim-move'
    Plug 'Yggdroot/indentLine'
    Plug 'w0rp/ale'
    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
    Plug 'airblade/vim-gitgutter'
    Plug 'daylerees/colour-schemes', { 'rtp': 'vim/' }
    Plug 'PotatoesMaster/i3-vim-syntax'
    Plug 'lilydjwg/colorizer', {'do': 'make'} " colorize rgb rgba texts
    Plug 'cj/vim-webdevicons'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'Shougo/neco-vim'
    Plug 'neoclide/coc-neco'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'prettier/vim-prettier', {
        \ 'do': 'yarn install',
        \ 'branch': 'release/1.x',
        \ 'for': [
            \ 'javascript',
            \ 'typescript',
            \ 'css',
            \ 'less',
            \ 'scss',
            \ 'json',
            \ 'graphql',
            \ 'markdown',
            \ 'vue',
            \ 'lua',
            \ 'php',
            \ 'python',
            \ 'ruby',
            \ 'html',
            \ 'swift' ] }
    "Plug 'SirVer/ultisnips'
    "Plug 'vim-latex/vim-latex'
    "Plug 'artur-shaik/vim-javacomplete2', { 'for': 'java' }
    "Plug 'zchee/deoplete-jedi', {'for': ['python', 'python3','djangohtml'], 'do': 'pip install jedi;pip3 install jedi'}
    "Plug 'wokalski/autocomplete-flow' " deoplete src for js
    "Plug 'chriskempson/base16-vim', {'do': 'git checkout dict_fix'}
    " For func argument completion
    "Plug 'Shougo/neosnippet'
    "Plug 'Shougo/neosnippet-snippets'
    "Plug 'wincent/command-t', {
    "\  'do': 'cd ruby/command-t/ext/command-t && ruby extconf.rb && make'
    "\  }
    "if has('nvim')
        "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    "else
        "Plug 'Shougo/deoplete.nvim'
        "Plug 'roxma/nvim-yarp'
        "Plug 'roxma/vim-hug-neovim-rpc'
    "endif

" Initialize plugin system
call plug#end()

 "}}}

" Colours and UI {{{

source ~/.config/nvim/colors/lena.vim
set t_Co=256

"if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
    "set t_Co=16
"endif

"if exists('+termguicolors')
    "let &t_8f ="\<Esc>[38;2;%lu;%lu;%lum"
    "let &t_8b ="\<Esc>[48;2;%lu;%lu;%lum"
    "set termguicolors
"endif

"set guifont=Source\ Code\ Pro\ for\ Powerline:h20
set laststatus=2

"set list lcs=tab:\|\ 

"python3 from powerline.vim import setup as powerline_setup
"python3 powerline_setup()
"python3 del powerline_setup

" NerdTree {{{

" Open NERDTree when no file(s) is selectedd
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" close vim if the only window left open is a NERDTree

" Open NERDTree with Ctrl+n
"map <C-n> :NERDTreeToggle<CR> 

" Would be useful mappings, but they interfere with my line movement bindings (<C-j> and <C-k>).
let g:NERDTreeMapJumpPrevSibling='<Nop>'
let g:NERDTreeMapJumpNextSibling='<Nop>'

" Quit nertree when a file is opened.
let NERDTreeQuitOnOpen = 1

"}}}

" }}}

" General settings {{{
set directory^=$HOME/.vim/tmp// " Place all swap files under .vim/tmp
set clipboard+=unnamed " Let vim use the systems clipboard
set mouse=a "Enable mouse support
syntax on "Enable syntax
set number "Set line number
set rnu "relative number numeration
" set confirm
filetype plugin indent on
set autowriteall "automatically save any changes made to the buffer before it is hidden.
" use 4 spaces for tabs
set tabstop=4 softtabstop=4 shiftwidth=4

" convert spaces to tabs when reading file
autocmd! bufreadpost * set noexpandtab | retab! 4

" convert tabs to spaces before writing file
autocmd! bufwritepre * set expandtab | retab! 4

" convert spaces to tabs after writing file (to show guides again)
autocmd! bufwritepost * set noexpandtab | retab! 4i
"" Code Folding
"" space open/closes folds
nnoremap <space> za
set foldmethod=marker

let g:session_autoload = "no"

" AutoGroup settings{{{

augroup AutoGroup
autocmd!
augroup EN
command! -nargs=* Autocmd autocmd AutoGroup <args>
command! -nargs=* AutocmdFT autocmd AutoGroup FileType <args>

" }}}

" }}}

" CUSTOM {{{

function! BufSel(pattern)
    let bufcount = bufnr("$")
    let currbufnr = 1
    let nummatches = 0
    let firstmatchingbufnr = 0
    while currbufnr <= bufcount
        if(bufexists(currbufnr))
            let currbufname = bufname(currbufnr)
            if(match(currbufname, a:pattern) > -1)
                echo currbufnr . ": ". bufname(currbufnr)
                let nummatches += 1
                let firstmatchingbufnr = currbufnr
            endif
        endif
        let currbufnr = currbufnr + 1
    endwhile
    if(nummatches == 1)
        execute ":buffer ". firstmatchingbufnr
    elseif(nummatches > 1)
        let desiredbufnr = input("Enter buffer number: ")
        if(strlen(desiredbufnr) != 0)
            execute ":buffer ". desiredbufnr
        endif
    else
        echo "No matching buffers"
    endif
endfunction

"Bind the BufSel() function to a user-command
command! -nargs=1 Bs :call BufSel("<args>")

" Forses new windows to open to the right and bottom 
set splitbelow
set splitright

"}}}

 " Settings for variopus plugins {{{

" Keeps nvim snappy (disable gitgutter if a file has more than n changes)
let g:gitgutter_max_signs = 500  " default value

" Use Ctrl+j/k to easily move a line
let g:move_key_modifier = 'C'

" CoC {{{

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]    =~# '\s'
endfunction


let g:coc_snippet_next = '<tab>'

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
"nmap <silent> <C-d> <Plug>(coc-range-select)
"xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR     :call   CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" }}}

" ALE {{{

let g:ale_enable = 1
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1 " Keeps the error column open

let g:ale_sign_error = '=>'
let g:ale_sign_warning = '>?'

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

"let g:ale_java_javac_classpath = [String], to load aditional classes
let g:ale_java_javac_classpath = "/home/daniel/java/algs4.jar"

let g:ale_linters = {
        \ 'javascript': ['eslint'],
        \ 'java': ['javac','javac-algs4'],
        \ 'php': ['php', 'phpcs', 'phpmd'],
        \ 'go': ['go build', 'gometalinter'],
        \ 'rust': ['rustc'],
        \ 'html': ['tidy', 'htmlhint'],
        \ 'c': ['clang'],
        \ 'cpp': ['clang++'],
        \ 'css': ['csslint', 'stylelint'],
        \ 'nim': ['nim', 'nimsuggest'],
        \ 'vim': ['vint'],
        \ 'python': ['python', 'pyflakes', 'flake8'],
        \ 'shell': ['sh', 'shellcheck'],
        \ 'zsh': ['zsh'],
        \ 'swift': ['swiftc'],
        \}

let g:ale_fixers = {
        \ 'javascript': ['eslint'],
        \ 'java': ['google_java_format']
        \}
" }}}

" AutorPair{{{

let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

    "}}}

" Latex-live-preview {{{

autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'zathura'
let g:livepreview_engine = 'pdflatex'

let g:tex_flavor = "latex"
    "}}}

" IndentLine {{{

"let g:indentLine_setColors = 0
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']
"let g:indentLine_concealcursor = 'inc'
"let g:indentLine_conceallevel = 2
"let g:indentLine_setConceal = 0

" 
" }}}

" Ctrlp {{{

let g:ctrlp_switch_buffer = '0'
" Useful for large projects
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=10
" So that it does not only index starting from current directory
let g:ctrlp_working_path_mode = ""
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
" Use ag AKA the_silver_searcher for indexing. Faster!!!
" TIP: Use ~/.ignore to ignore directories/files
set grepprg=ag\ --nogroup\ --nocolor
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
""if executable('ag')
""  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
""endif
let g:ctrlp_show_hidden =1
let g:ctrlp_clear_cache_on_exit = 0

"}}}

nmap <F8> :TagbarToggle<CR>

nnoremap <silent><esc> :noh<return><esc>

function! StatusDiagnostic() abort
    let info = get(b:, 'coc_diagnostic_info', {})
    if empty(info) | return '' | endif
    let msgs = []
    if get(info, 'error', 0)
        call add(msgs, 'E' . info['error'])
    endif
    if get(info, 'warning', 0)
        call add(msgs, 'W' . info['warning'])
    endif
        return join(msgs, ' '). ' ' . get(g:, 'coc_status', '')
endfunction

source ~/.config/nvim/statusline.vim

"}}}
