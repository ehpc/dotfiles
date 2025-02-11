return {
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    lazy = true,
    opts = {},
    keys = {
      {
        "<leader>ft",
        "<cmd>Telescope file_browser<cr>",
        desc = "File Browser",
      }
    },
  }
}
