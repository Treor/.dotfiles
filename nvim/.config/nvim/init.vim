" Plugin management

" Installs Plug if it isn't allready installed

if has('vim_starting')
    set runtimepath+=~/.config/nvim/plugged/vim-plug
    if !isdirectory(expand('$NVIM_HOME') . '/plugged/vim-plug')
        call system('mkdir -p ~/.config/nvim/plugged/vim-plug')
        call system('git clone https://github.com/junegunn/vim-plug.git ~/.config/nvim/plugged/vim-plug/autoload')
    end
endif

" Plugin section

call plug#begin('~/.config/nvim/plugged')
    Plug 'justinmk/vim-sneak'
    Plug 'unblevable/quick-scope'
    Plug 'liuchengxu/vim-which-key'
    Plug 'tpope/vim-eunuch'     " UNIX commands in VIM
    Plug 'tpope/vim-tbone'      " TMUX
    Plug 'tpope/vim-dadbod'     " DataBases
    Plug 'tpope/vim-obsession'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-speeddating'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'    " GitHub (extension for vim-fugitive)
    Plug 'scrooloose/nerdcommenter'
    Plug 'mcchrish/nnn.vim'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'jceb/vim-orgmode'
    Plug 'vimwiki/vimwiki'
    Plug 'majutsushi/tagbar'
    Plug 'matze/vim-move'
    Plug 'Yggdroot/indentLine'
    Plug 'airblade/vim-gitgutter'
    Plug 'lilydjwg/colorizer', {'do': 'make'} " colorize rgb rgba texts
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'neoclide/coc-neco'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'prettier/vim-prettier', {
        \ 'do': 'yarn install',
        \ 'branch': 'release/1.x',
        \ 'for': [
            \ 'json',
            \ 'markdown',
            \ 'lua' ] }
    Plug 'andrewradev/splitjoin.vim'
    Plug 'andrewradev/sideways.vim'
    Plug 'andrewradev/switch.vim'
    Plug 'rust-lang/rust.vim'
    Plug 'itchyny/lightline.vim'
    Plug 'justinmk/vim-dirvish'
    Plug 'kristijanhusak/vim-dirvish-git'
    Plug 'xolox/vim-session'
    Plug 'xolox/vim-misc'
    Plug 'ryanoasis/vim-devicons'
call plug#end()
