""" System

set hidden
set noerrorbells
set noswapfile
set nobackup

""" Splits

set splitright

""" Tabs

set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent


""" Searching

set ignorecase
set smartcase
set incsearch
nnoremap <leader>h <cmd>noh<cr>

""" Navigating

set scrolloff=8

""" Lines and columns

set number relativenumber
set signcolumn=yes
set colorcolumn=80,120

""" Text

set nowrap
" set list
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,precedes:«,extends:»

""" Themes

set termguicolors
set background=dark
colorscheme molokai

""" Leader key

let mapleader = " "

""" Plugins

lua require('plugins')

augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end

