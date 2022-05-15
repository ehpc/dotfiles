return require('packer').startup(function()

  -- Plugin manager
  use 'wbthomason/packer.nvim'

  -- Common lua functions
  use 'nvim-lua/plenary.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- Syntax highlighter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Icons for telescope
  use 'kyazdani42/nvim-web-devicons'

  -- Compiled fuzzy finder
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- Fuzzy finder main package
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Themes
  use 'NLKNguyen/papercolor-theme'
  use 'tomasr/molokai'
  use 'dracula/vim'
  use 'jaredgorski/spacecamp'
  use 'Rigellute/shades-of-purple.vim'

end)
