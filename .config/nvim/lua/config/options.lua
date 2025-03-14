-- Allow unsaved buffer
vim.opt.hidden = true

-- Colors
vim.opt.termguicolors = true

-- Fonts
vim.opt.guifont = "FiraCode Nerd Font:h14"

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Line numbers
vim.opt.number = true
vim.opt.numberwidth = 2

-- Current line
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

-- Indentation
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

vim.opt.list = true
vim.opt.listchars = {
  -- space = "·",
  tab = "→ ",
  nbsp = "+",
  trail = "⋅",
  extends = "❯",
  precedes = "❮",
  -- eol = "¬",
}
