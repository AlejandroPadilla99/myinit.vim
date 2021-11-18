set exrc
set guicursor=
set relativenumber
set nohlsearch
set nu
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set noswapfile
set nobackup
set undodir=~/.nvim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set colorcolumn=120
set signcolumn=yes

" Ignore files 
set wildignore+=**/node_modules/*

call plug#begin('~/.nvim/plugged')

    "themes
    Plug 'gruvbox-community/gruvbox'
    Plug 'wadackel/vim-dogrun'

    "Airline
    Plug 'vim-airline/vim-airline'                                                                                          
    Plug 'vim-airline/vim-airline-themes' 

    "indentLine
    Plug 'Yggdroot/indentLine'
    "Snippets
    Plug 'rafamadriz/friendly-snippets'
    
    "
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'

    "{{ Configuring NerdTree
    Plug 'scrooloose/nerdtree'
        "---> to hide unwanted files <---
        let NERDTreeIgnore = [ '__pycache__', '\.pyc$', '\.o$', '\.swp',  '*\.swp',  'node_modules/' ]
        "---> show hidden files <---
        let NERDTreeShowHideen=1
        "---> toggling nerd-tree using Crtl-N <---
        map<C-n> :NERDTreeToggle<CR>
    "}}
    
    "{{ Configuring fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
        "---> open fzf using Crtl-P <---
        map<C-p> :Files<Cr>
        "---> open fzf on botton <---
        let g:fzf_layout = { 'down': '40%' }
    "}}
    
    "{{ TMux vim integration 
    Plug 'christoomey/vim-tmux-navigator'
    "}}

call plug#end()

"gruvbox configuration
colorscheme gruvbox
highlight Normal guibg=none
"lsp

"airline configuration
let g:airline_theme='dark_minimal'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'


"IndetLine configuration
let g:indentLine_setColors = 0

set completeopt=menu,menuone,noselect

luafile ~/.config/nvim/plugins/comp-config.lua
