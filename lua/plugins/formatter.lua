return {
  -- {
  -- 	"mhartington/formatter.nvim",
  -- 	config = function()
  -- 		local formatter = require("formatter")
  -- 		formatter.setup({
  -- 			filetype = {
  -- 				lua = {
  -- 					require("formatter.filetypes.lua").stylua,
  -- 				},
  -- 			},
  -- 		})
  -- 	end,
  -- },
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("conform").setup({
        lua = { "stylua" },
        python = { "isort", "black" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        graphql = { "prettier" },
        format_on_save = {
          timeout_ms = 500,
          lsp_fallback = true,
        },
      })
    end,
  },
  -- {
  -- 	"nvimtools/none-ls.nvim",
  -- 	dependencies = {
  -- 		"nvimtools/none-ls-extras.nvim",
  -- 	},
  -- 	config = function()
  -- 		local null_ls = require("null-ls")
  -- 		null_ls.setup({
  -- 			sources = {
  -- 				require("none-ls.diagnostics.eslint_d"),
  -- 				null_ls.builtins.formatting.stylua,
  -- 				null_ls.builtins.formatting.prettier,
  -- 				null_ls.builtins.formatting.black,
  -- 				null_ls.builtins.formatting.isort,
  -- 				null_ls.builtins.completion.spell,
  -- 			},
  -- 		})
  -- 		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  -- 	end,
  -- },
}
