return {
  -- {
  --   "nvim-tree/nvim-tree.lua",
  --   dependencies = {
  --     "nvim-tree/nvim-web-devicons",
  --   },
  --   config = function()
  --     require("nvim-tree").setup({
  --     })
  --     vim.keymap.set('n', '<C-v>', ':NvimTreeToggle<CR>', {})
  --     vim.keymap.set('n', '<C-y>', ':NvimTreeFindFile<CR>', {})
  --     vim.keymap.set('n', '<C-r>', ':NvimTreeRefresh<CR>', {})
  --   end
  -- }
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        filesystem = {
           filtered_items = {
           visible = true,
           show_hidden_count = true,
           hide_dotfiles = false,
           hide_gitignored = false,
          }
        }
      })
      vim.keymap.set('n', '<C-v>', ':Neotree toggle<CR>', {})
      vim.keymap.set('n', '<C-y>', ':Neotree filesystem reveal left<CR>', {})
      buffers = { follow_current_file = { enabled = true } }
      -- vim.keymap.set('n', '<C-y>', ':Neotree focus filesystem left<CR>', {})
  -- nnoremap <silent> <C-v> :NERDTreeToggle<CR>
  -- nnoremap <silent> <C-y> :NERDTreeFind<CR>
    end
  },
}

