local map = vim.keymap.set

map('n', '<leader>ff', function()
  require('telescope.builtin').find_files()
end)

map('n', '<leader>fg', function()
  require('telescope.builtin').live_grep()
end)

map('n', '<leader>fb', function()
  require('telescope.builtin').buffers()
end)

map('n', '<leader>fh', function()
  require('telescope.builtin').help_tags()
end)

require('telescope').load_extension('fzf')

