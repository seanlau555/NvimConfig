return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
			-- stylua
			-- prettier
			-- black
			-- isort
			-- spell
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lasy = false,
		opts = {
			auto_install = true,
		},
		-- config = function()
		--   require("mason-lspconfig").setup({
		--     ensure_installed = { "lua_ls", "tsserver", "zls" }
		--   })
		-- end
	},
	{
		"neovim/nvim-lspconfig",
		lasy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			local servers = { "ts_ls", "lua_ls", "html" }
			for _, lsp in ipairs(servers) do
				lspconfig[lsp].setup({
					capabilities = capabilities,
				})
			end
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { noremap = true })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { noremap = true })
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
			vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, {})
		end,
	},
}
