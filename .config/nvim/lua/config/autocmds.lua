-- On start
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- If nvim was opened w/o file
    if vim.fn.argv(0) == "" then
      -- Open project picker
      require "telescope".extensions.project.project {}
    end
  end,
})
