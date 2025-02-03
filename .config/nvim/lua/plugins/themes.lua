return {
	{
		"navarasu/onedark.nvim",
		name = "onedark",
		priority = 1000,
		lazy = true,
		opts = {
			style = "deep", -- deep, darker
		},
		config = function(_, opts)
			require("onedark").setup(opts)
			vim.cmd("coloscheme onedark")
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
		lazy = true,
		config = function()
			vim.cmd("colorscheme rose-pine")
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		lazy = false,
		opts = {
			flavour = "mocha",
		},
		config = function(_, opts)
			require("catppuccin").setup(opts)
			vim.cmd("colorscheme catppuccin")
		end,
	},
}
