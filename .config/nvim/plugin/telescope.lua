local map = vim.keymap.set

local M = {}

M.project_files = function()
  local opts = {
    hidden = true
  }
  local ok = pcall(require"telescope.builtin".git_files, opts)
  if not ok then require"telescope.builtin".find_files(opts) end
end

require("telescope").setup {
  defaults = {
    preview = {
      mime_hook = function(filepath, bufnr, opts)
          vim.fn.jobstart(
            'echo "ext:' .. extension .. '" >> ~/.out.log',
            {on_stdout=send_output, stdout_buffered=true})
        local is_image = function(filepath)
          local image_extensions = {'png','jpg','gif','svg','ico','jpeg','bmp','webp'}
          local split_path = vim.split(filepath:lower(), '.', {plain=true})
          local extension = split_path[#split_path]
          return vim.tbl_contains(image_extensions, extension)
        end
        if is_image(filepath) then
          local term = vim.api.nvim_open_term(bufnr, {})
          local function send_output(_, data, _ )
            for _, d in ipairs(data) do
              vim.api.nvim_chan_send(term, d..'\r\n')
            end
          end
          vim.fn.jobstart(
            'echo "convert ' .. filepath .. ' jpg:- | viu -" >> ~/.out.log',
            {on_stdout=send_output, stdout_buffered=true})
        else
          require("telescope.previewers.utils").set_preview_message(bufnr, opts.winid, "Binary cannot be previewed")
        end
      end
    },
  }
}

map('n', '<leader>ff', function()
  M.project_files()
end)

map('n', '<leader>fa', function()
  require('telescope.builtin').find_files({
    hidden = true
  })
end)

map('n', '<leader>fp', function()
  require('telescope.builtin').git_files({
    hidden = true
  })
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

