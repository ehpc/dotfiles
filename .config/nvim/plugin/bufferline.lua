local map = vim.api.nvim_set_keymap           
local opts = { noremap = true, silent = true }

vim.opt.termguicolors = true
require("bufferline").setup{}

map('n', '<A-,>', ':BufferLineCycleNext<CR>', opts)
map('n', '<A-.>', ':BufferLineCyclePrev<CR>', opts)    
                                              
map('n', '<A-c>', ':BufferLinePickClose<CR>', opts)   
map('n', '<A-p>', ':BufferLinePick<CR>', opts)    


