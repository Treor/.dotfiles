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
    Plug 'mg979/vim-visual-multi'
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
    "Plug 'mcchrish/nnn.vim'
    Plug 'jceb/vim-orgmode'
    Plug 'vimwiki/vimwiki'
    Plug 'majutsushi/tagbar'
    Plug 'matze/vim-move'
    Plug 'Yggdroot/indentLine'
    Plug 'airblade/vim-gitgutter'
    Plug 'lilydjwg/colorizer', {'do': 'make'} " colorize rgb rgba texts
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    "Plug 'neoclide/coc-neco'
    "Plug 'neoclide/coc.nvim', {'branch': 'release'}
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
    "Plug 'bagrat/vim-buffet'

    Plug 'kyazdani42/nvim-web-devicons'
    "Plug 'kyazdani42/nvim-tree.lua'
    "Plug 'romgrk/barbar.nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
    Plug 'nvim-treesitter/playground'
    Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(1) } }
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-compe'
    Plug 'hrsh7th/vim-vsnip'

    Plug 'haishanh/night-owl.vim'
    Plug 'ghifarit53/tokyonight-vim'
    Plug 'drewtempelmeyer/palenight.vim'

    "Plug 'TaDaa/vimade'
call plug#end()

"Temp section
let g:palenight_terminal_italics=1

let g:vimade = {}
let g:vimade.enabletreesitter=1
