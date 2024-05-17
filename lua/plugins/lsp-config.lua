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
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lasy = false,
    opts = {
      auto_install = true
    }
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
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.tsserver.setup({
        capabilities = capabilities
      })
      lspconfig.zls.setup({
        capabilities = capabilities
      })
      lspconfig.html.setup({
        capabilities = capabilities
      })
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
      vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, {})
    end
  }
}
