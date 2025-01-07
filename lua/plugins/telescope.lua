return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			-- vim.keymap.set("n", "<leader>g", builtin.git_files, {})
			vim.keymap.set("n", "<leader>G", builtin.find_files, {})
			vim.keymap.set("n", "<leader>f", builtin.live_grep, {})
		end,
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
		config = function()
			require("telescope").setup({
				--  defaults   = {},
				--  pickers    = {},
				extensions = {
					fzf = {
						fuzzy = true, -- false will only do exact matching
						override_generic_sorter = true, -- override the generic sorter
						override_file_sorter = true, -- override the file sorter
						case_mode = "smart_case", -- or "ignore_case" or "respect_case"
					},
				},
			})
			require("telescope").load_extension("fzf")
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
