return {
  "debugloop/telescope-undo.nvim",
  lazy = true,
  dependencies = {
    {
      "nvim-telescope/telescope.nvim",
      dependencies = { "nvim-lua/plenary.nvim" },
    },
  },
  opts = {
    extensions = {
      undo = {
        side_by_side = true,
        layout_strategy = "vertical",
        layout_config = {
          preview_height = 0.8,
        },
      },
    },
  },
  keys = {
    {
      "<leader>u",
      "<cmd>Telescope undo<cr>",
      desc = "Undo",
    },
  },
  config = function(_, opts)
    require("telescope").setup(opts)
    require("telescope").load_extension("undo")
  end
}
