-- lazy nvim - a nvim plugin installer
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim" if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")



-- move indent
local opts = { noremap = true, silent = true }
vim.keymap.set("n",    "<Tab>",         ">>",  opts)
vim.keymap.set("n",    "<S-Tab>",       "<<",  opts)
vim.keymap.set("v",    "<Tab>",         ">gv", opts)
vim.keymap.set("v",    "<S-Tab>",       "<gv", opts)

-- use ctrl+hjkl to move between split/vsplit panels
vim.keymap.set("n",    "<C-h>",         "<C-w>h",  opts)
vim.keymap.set("n",    "<C-j>",         "<C-w>j",  opts)
vim.keymap.set("n",    "<C-k>",         "<C-w>k",  opts)
vim.keymap.set("n",    "<C-l>",         "<C-w>l",  opts)

















