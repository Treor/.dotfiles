
"███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
"████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
"██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
"██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
"██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
"╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝

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
"   call system('pip install --upgrade pip')
"   call system('pip install neovim --upgrade')
    "echo system('Installing upgrade pip and install neovim')
"endif

"if !has('python3') && !has('pip3')
"   call system('pip3 install --upgrade pip')
"   call system('pip3 install neovim --upgrade')
    "echo system('Installing upgrade pip3 and install neovim')
"endif

"if !has('npm')
"   call system('sudo pacman -S nodejs npm')
    "echo system('installing nodejs and npm')
"endif

"if !has('eslint')
"   call system('sudo npm install -g eslint')
    "echo system('installing eslint')
"endif

"let g:python_host_skip_check = 1
"let g:python2_host_skip_check = 1
"let g:python3_host_skip_check = 1

"if executable('python2.7')
    "let g:python_host_prog = system('which python')
"   let g:python_host_prog = /usr/bin/python2.7"
"endif

"if executable('python3')
    "let g:python3_host_prog = system('which python3')
"   let g:python3_host_prog = /usr/bin/python3"
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
    Plug 'vim-latex/vim-latex'
    Plug 'jceb/vim-orgmode'
    Plug 'majutsushi/tagbar'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'honza/vim-snippets'
    Plug 'matze/vim-move'
    Plug 'Yggdroot/indentLine'
    Plug 'w0rp/ale'
    Plug 'artur-shaik/vim-javacomplete2', { 'for': 'java' }
    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
    Plug 'airblade/vim-gitgutter'
    Plug 'daylerees/colour-schemes', { 'rtp': 'vim/' }
    Plug 'PotatoesMaster/i3-vim-syntax'
    Plug 'SirVer/ultisnips'
    Plug 'zchee/deoplete-jedi', {'for': ['python', 'python3','djangohtml'], 'do': 'pip install jedi;pip3 install jedi'}
    Plug 'lilydjwg/colorizer', {'do': 'make'} " colorize rgb rgba texts
    Plug 'wokalski/autocomplete-flow' " deplete src for js
    Plug 'cj/vim-webdevicons'
    "Plug 'chriskempson/base16-vim', {'do': 'git checkout dict_fix'}
    " For func argument completion
    "Plug 'Shougo/neosnippet'
    "Plug 'Shougo/neosnippet-snippets'
    Plug 'wincent/command-t', {
    \  'do': 'cd ruby/command-t/ext/command-t && ruby extconf.rb && make'
    \  }
    if has('nvim')
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    else
        Plug 'Shougo/deoplete.nvim'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
    endif

" Initialize plugin system
call plug#end()

 "}}}

" Colours and UI {{{

"set rtp+=/home/treor/.local/lib/python3.6/site-packages/powerline/bindings/vim
"set background=dark
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

" Airline {{{

"let g:airline_theme='molokai'
"let g:airline#extensions#tabline#formatter = 'default'
"let g:airline#extensions#tabline#enabled = 1
"let g:airairline_powerline_fonts = 1
"let g:airline_symbols = {}
"if !exists('g:airline_symbols')
   "let g:airline_symbols = {}
"endif

" powerline symbols
  "let g:airline_left_sep = ''
  "let g:airline_left_alt_sep = ''
  "let g:airline_right_sep = ''
  "let g:airline_right_alt_sep = ''
  "let g:airline_symbols.branch = ''
  "let g:airline_symbols.readonly = ''
  "let g:airline_symbols.linenr = '☰'
  "let g:airline_symbols.maxlinenr = ' '

"let g:airline#extensions#ale#enabled = 1
    " }}}
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
        augroup END

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

 " UtilSnips {{{ 

let g:UltiSnipsSnippetDirectories = ['/home/treor/.config/nvim/pluged/ultixsSnips', 'ultisnips']

 " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.

"let g:UltiSnipsExpandTrigger="<a-tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" Prevent UltiSnips from removing our carefully-crafted mappings.
let g:UltiSnipsMappingsToIgnore = ['autocomplete']

if has('autocmd')
  augroup Autocomplete
    autocmd!
    autocmd! User UltiSnipsEnterFirstSnippet
    autocmd User UltiSnipsEnterFirstSnippet call autocomplete#setup_mappings()
    autocmd! User UltiSnipsExitLastSnippet
    autocmd User UltiSnipsExitLastSnippet call autocomplete#teardown_mappings()
  augroup END
endif

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" }}}

" JavaComplete {{{

set omnifunc=syntaxcomplete#Complete
let g:JavaComplete_LibsPath = "/home/treor/java/algs4.jar"
autocmd FileType java setlocal omnifunc=javacomplete#Complete

nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)

    " }}}

" Deoplete {{{

let g:deoplete#enable_at_startup = 1
let g:deoplete#omni_patterns = {}
let g:deoplete#auto_completion_start_length = 1
let g:deoplete#omni_patterns.java = '[^. *\t]\.\w*'
let g:deoplete#sources = {}
let g:deoplete#sources._ = []
let g:deoplete#file#enable_buffer_path = 1
" Binary path to your flow, defaults to your $PATH flow
let g:deoplete#sources#flow#flow_bin = 'flow'
call deoplete#custom#source('ultisnips', 'matchers', ['matcher_fuzzy'])
call deoplete#custom#source('_', 'matchers', ['matcher_full_fuzzy'])
call deoplete#custom#source('ultisnips', 'rank', 1000)
" Deoplete tab-completion
"inoremap <expr><tab> pumvisible() ? "\<C-n>" : "\<tab>"

inoremap <expr><C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr><Down> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr><C-k> pumvisible() ? "\<C-p>" : "\<C-j>"
inoremap <expr><Up> pumvisible() ? "\<C-p>" : "\<Up>"

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

" Deoplete Python
AutocmdFT python let g:deoplete#sources#jedi#enable_cache = 1
AutocmdFT python let g:deoplete#sources#jedi#statement_length = 0
AutocmdFT python let g:deoplete#sources#jedi#short_types = 0
AutocmdFT python let g:deoplete#sources#jedi#show_docstring = 1
AutocmdFT python let g:deoplete#sources#jedi#worker_threads = 4
AutocmdFT python call deoplete#custom#source('jedi', 'disabled_syntaxes', ['Comment'])
AutocmdFT python call deoplete#custom#source('jedi', 'matchers', ['matcher_fuzzy'])

"let g:ale_java_javac_classpath = [String], to load aditional classes
let g:ale_java_javac_classpath = "/home/daniel/java/algs4.jar"

let g:ale_linters = {
        \   'javascript': ['eslint'],
        \   'java': ['javac','javac-algs4'],
        \   'php': ['php', 'phpcs', 'phpmd'],
        \   'go': ['go build', 'gometalinter'],
        \   'rust': ['rustc'],
        \   'html': ['tidy', 'htmlhint'],
        \   'c': ['clang'],
        \   'cpp': ['clang++'],
        \   'css': ['csslint', 'stylelint'],
        \   'nim': ['nim', 'nimsuggest'],
        \   'vim': ['vint'],
        \   'python': ['python', 'pyflakes', 'flake8'],
        \   'shell': ['sh', 'shellcheck'],
        \   'zsh': ['zsh'],
        \   'swift': ['swiftc'],
        \}

let g:ale_fixers = {
        \   'javascript': ['eslint'],
        \   'java': ['google_java_format']
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
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
"let g:indentLine_setConceal = 0

" }}}
    
let g:CommandTScanDotDirectories = 1
let g:CommandTMaxFiles = 150000
let g:CommandTAlwaysShowDotFiles = 1
let g:CommandTSuppressMaxFilesWarning = 1

nmap <F8> :TagbarToggle<CR>

nnoremap <silent><esc> :noh<return><esc>

source ~/.config/nvim/statusline.vim

"}}}
