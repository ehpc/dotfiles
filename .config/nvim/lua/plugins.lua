return require('packer').startup(function()

  -- plugin manager
  use 'wbthomason/packer.nvim'

  -- common lua functions
  use 'nvim-lua/plenary.nvim'

  -- lsp
  use 'neovim/nvim-lspconfig'

  -- syntax highlighter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':tsupdate'
  }

  use 'rrethy/nvim-treesitter-textsubjects'

  -- icons for telescope
  use 'kyazdani42/nvim-web-devicons'

  -- compiled fuzzy finder
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- fuzzy finder main package
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Tabs
--  use {
--    'romgrk/barbar.nvim',
--    requires = {'kyazdani42/nvim-web-devicons'}
--  }
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

  -- File explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
    tag = 'nightly'
  }

  -- Themes
  use 'nlknguyen/papercolor-theme'
  use 'tomasr/molokai'
  use 'dracula/vim'
  use 'jaredgorski/spacecamp'
  use 'rigellute/shades-of-purple.vim'

end)
