require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
}

require'nvim-treesitter.configs'.setup {
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<C-w>",
      node_incremental = "<C-w>",
      scope_incremental = "<C-e>",
      node_decremental = "<C-q>",
    },
  },
}

require'nvim-treesitter.configs'.setup {
  indent = {
    enable = true
  }
}

vim.opt.foldlevel = 99
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'

