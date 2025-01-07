return {
	-- {
	--   "projekt0n/github-nvim-theme",
	--   name = "github-theme",
	--   lazy = false,  -- make sure we load this during startup if it is your main colorscheme
	--   priority = 1000, -- make sure to load this before all the other start plugins
	--   config = function()
	--     require("github-theme").setup({})
	--     vim.cmd("colorscheme github_dark")
	--   end,
	-- },
	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {},
	-- 	config = function()
	-- 		vim.cmd.colorscheme("tokyonight")
	-- 	end,
	-- },
	-- {
	--   "ribru17/bamboo.nvim",
	--   lazy = false,
	--   priority = 1000,
	--   config = function()
	--     require("bamboo").setup({
	--       -- optional configuration here
	--     })
	--     require("bamboo").load()
	--   end,
	-- },
	{
		"rebelot/kanagawa.nvim",
		config = function()
			vim.cmd.colorscheme("kanagawa")
		end,
	},
	-- {
	-- 	"morhetz/gruvbox",
	-- 	config = function()
	-- 		vim.cmd.colorscheme("gruvbox")
	-- 	end,
	-- },
	-- {
	--   "challenger-deep-theme/vim",
	--   config = function()
	--     vim.cmd.colorscheme("challenger-deep")
	--   end,
	-- },
	-- {
	-- 	"Shatur/neovim-ayu",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("ayu").setup({
	-- 			mirage = true,
	-- 			terminal = true,
	-- 			overrides = {},
	-- 		})
	-- 		vim.cmd.colorscheme("ayu")
	-- 	end,
	-- },
}
