if vim.g.neovide then
  if vim.loop.os_uname().sysname == "Darwin" then
  	vim.g.neovide_fullscreen = true
  end
end
