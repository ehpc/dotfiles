return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
      },
    },
  },
  keys = {
    {
      "<leader>dd",
      "<cmd>Neotree toggle current reveal<cr>",
      desc = "Open Neo Tree in current window",
    },
    {
      "<leader>df",
      "<cmd>Neotree toggle reveal<cr>",
      desc = "Open Neo Tree drawer",
    },
  },
}
