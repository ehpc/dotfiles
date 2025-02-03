return {
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
		lazy = true,
	},
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"nvim-telescope/telescope-fzf-native.nvim",
			"nvim-treesitter/nvim-treesitter",
			"debugloop/telescope-undo.nvim",
		},
		cmd = "Telescope",
		lazy = true,
		opts = {
			extensions = {
				undo = {
					side_by_side = true,
					layout_strategy = "vertical",
					layout_config = {
						preview_height = 0.8,
					},
				},
				fzf = {
					fuzzy = true, -- false will only do exact matching
					override_generic_sorter = true, -- override the generic sorter
					override_file_sorter = true, -- override the file sorter
					case_mode = "smart_case", -- or 'ignore_case' or 'respect_case'
				},
			},
		},
		config = function()
			require("telescope").load_extension("fzf")
			require("telescope").load_extension("undo")
		end,
		keys = {
			{
				"<leader>ff",
				function()
					require("telescope.builtin").find_files()
				end,
				desc = "Telescope find files",
			},
			{
				"<leader>fg",
				function()
					require("telescope.builtin").live_grep()
				end,
				desc = "Telescope live grep",
			},
			{
				"<leader>fb",
				function()
					require("telescope.builtin").buffers()
				end,
				desc = "Telescope buffers",
			},
			{
				"<leader>fh",
				function()
					require("telescope.builtin").help_tags()
				end,
				desc = "Telescope help tags",
			},
			{
				"<leader>gg",
				function()
					require("telescope.builtin").find_git()
				end,
				desc = "Telescope find in git files",
			},
			{
				"<leader>fc",
				function()
					require("telescope.builtin").current_buffer_fuzzy_find()
				end,
				desc = "Telescope find in current buffer",
			},
			{
				"<leader>fp",
				function()
					require("telescope.builtin").planets()
				end,
				desc = "Telescope planets",
			},
			{
				"<leader>u",
				function()
					require("telescope").extensions.undo.undo()
				end,
				desc = "Undo",
			},
		},
	},
}
