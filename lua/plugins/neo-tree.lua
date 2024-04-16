return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      follow_current_file = {
        enabled = true,
        leave_dirs_open = true,
      }
    })
    vim.keymap.set('n', '<C-v>', ':Neotree toggle<CR>', {})
-- neotree
-- vim.keymap.set('n', '<C-y>', ':Neotree position=current<CR>', {})
-- nnoremap <silent> <C-v> :NERDTreeToggle<CR>
-- nnoremap <silent> <C-y> :NERDTreeFind<CR>
  end
}

