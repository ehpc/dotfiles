return {
  "nvim-telescope/telescope-project.nvim",
  lazy = true,
  dependencies = {
    {
      "nvim-telescope/telescope.nvim",
      dependencies = { "nvim-lua/plenary.nvim" },
    },
  },
  opts = {},
  keys = {
    {
      "<leader>fp",
      "<cmd>Telescope project<cr>",
      desc = "Telescope projects",
    },
  },
  config = function(_, opts)
    require("telescope").setup(opts)
    require("telescope").load_extension("project")
  end
}
