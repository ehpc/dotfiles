local map = vim.keymap.set

vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_highlight_opened_file = 1
vim.g.nvim_tree_respect_buf_cwd = 1

require'nvim-tree'.setup {
  actions = {
    open_file = {
      resize_window = true
    }
  },
  open_on_setup = true,
  update_focused_file = {
    enable = true
  },
  view = {
    side = "left"
  }
}

map('n', '<leader>n', '<cmd>NvimTreeToggle<cr>')
