return {
  -- {
  --   "morhetz/gruvbox",
  --   config = function()
  --     vim.cmd.colorscheme "gruvbox"
  --   end
  -- }
  "Shatur/neovim-ayu", priority= 1000,
  config = function()
    require("ayu").setup({
      mirage = true,
      terminal = true,
      overrides = {}
    })
    vim.cmd.colorscheme "ayu"
  end

}

