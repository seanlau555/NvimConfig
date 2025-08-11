return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				-- theme = "gruvbox",
				theme = "kanagawa",
				-- theme = "github_dark",
			},
		})
	end,
}
