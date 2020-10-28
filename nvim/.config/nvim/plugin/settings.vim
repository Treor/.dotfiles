" {{{ Color settings

set t_Co=256

if exists('+termguicolors')
    let &t_8f ="\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b ="\<Esc>[48;2;%lu;%lu;%lum"
    "set termguicolors
endif

" }}}

" {{{ Swap/Backup/Undo files
"
set directory^=$HOME/.vim/tmp/swap    " Place all swap files under .vim/tmp


if exists('$SUDO_USER')
  set nobackup                        " don't create root-owned files
  set nowritebackup                   " don't create root-owned files
else
  set backupdir=~/.vim/tmp/backup     " keep backup files out of the way
  set backupdir+=.
endif

if has('persistent_undo')
  if exists('$SUDO_USER')
    set noundofile                    " don't create root-owned files
  else
    set undodir=~/.vim/tmp/undo       " keep undo files out of the way
    set undodir+=.
    set undofile                      " actually use undo files
  endif
endif

" }}}

set clipboard+=unnamed " Let vim use the systems clipboard
set mouse=a "Enable mouse support
syntax on "Enable syntax
set number "Set line number
set rnu "relative number numeration
set laststatus=2
set fillchars+=vert:\ 
filetype indent plugin on
set autowriteall "automatically save any changes made to the buffer before it is hidden.

" use 4 spaces for tabs
set tabstop=4 softtabstop=4 shiftwidth=4
set expandtab

"" Code Folding
"" space open/closes folds
nnoremap <space> za
set foldmethod=marker

" Forses new windows to open to the right and bottom 
set splitbelow
set splitright

" Use Ctrl+j/k to easily move a line
let g:move_key_modifier = 'C'

let g:session_autosave = "no"

set cursorline
set scrolloff=3
