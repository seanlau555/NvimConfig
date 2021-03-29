-- local lsp_status = require("lsp-status")
-- lsp_status.register_progress()
-- lsp_status.config {kind_labels = vim.g.completion_customize_lsp_label}
-- local status = require("rockerboo.lsp_status")
local nvim_lsp = require("nvim_lsp")

-- config.capabilities = vim.tbl_extend('keep', default_lsp_config.capabilities or {}, lsp_status.capabilities)
-- not sure what config is to extend this in lsp-status

--- Language servers
local on_attach_vim = function(client)

  require"completion".on_attach(client)
  require"diagnostic".on_attach(client)
  -- status.on_attach(client)
end


local default_lsp_config = {on_attach = on_attach_vim}

--nvim_lsp.elixirls.setup(default_lsp_config)
--nvim_lsp.rust_analyzer.setup(default_lsp_config)
-- nvim_lsp.rome.setup(default_lsp_config)
nvim_lsp.tsserver.setup(default_lsp_config)
--nvim_lsp.pyls.setup(default_lsp_config)
--nvim_lsp.gopls.setup(default_lsp_config)
--nvim_lsp.cssls.setup(default_lsp_config)
--nvim_lsp.vimls.setup(default_lsp_config)
--nvim_lsp.bashls.setup(default_lsp_config)

-- nlua.lsp uses sumneko_lua
-- nvim_lsp.sumneko_lua.setup(default_lsp_config)
-- neovim lua lsp
require("nlua.lsp.nvim").setup(nvim_lsp, {on_attach = on_attach_vim})
--local configs = require 'nvim_lsp/configs'

--local M = {
  --util = require 'nvim_lsp/util';
--}

--function M.available_servers()
  --return vim.tbl_keys(configs)
--end

--function M.installable_servers()
  --local res = {}
  --for k, v in pairs(configs) do
    --if v.install then table.insert(res, k) end
  --end
  --return res
--end

--M._root = {}
---- Called from plugin/nvim_lsp.vim because it requires knowing that the last
---- script in scriptnames to be executed is nvim_lsp.
--function M._root._setup()
  --M._root.commands = {
    --LspInstall = {
      --function(name)
        --if configs[name] == nil then
          --pcall(require('nvim_lsp/'..name))
        --end
        --local config = configs[name]
        --if not config then
          --return print("Invalid server name:", name)
        --end
        --if not config.install then
          --return print(name, "can't be automatically installed (yet)")
        --end
        --if config.install_info().is_installed then
          --return print(name, "is already installed")
        --end
        --config.install()
      --end;
      --"-nargs=1";
      --"-complete=custom,v:lua.lsp_complete_installable_servers";
      --description = '`:LspInstall {name}` installs a server under stdpath("cache")/nvim_lsp/{name}';
    --};
    --LspInstallInfo = {
      --function(name)
        --if name == nil then
          --local res = {}
          --for k, v in pairs(configs) do
            --if v.install_info then
              --res[k] = v.install_info()
            --end
          --end
          --return print(vim.inspect(res))
        --end
        --if configs[name] == nil then
          --pcall(require('nvim_lsp/'..name))
        --end
        --local config = configs[name]
        --if not config then
          --return print("Invalid server name:", name)
        --end
        --return print(vim.inspect(config.install_info()))
      --end;
      --"-nargs=?";
      --"-complete=custom,v:lua.lsp_complete_servers";
      --description = 'Print installation info for {name} if one is specified, or all installable servers.';
    --};
  --};

  --M.util.create_module_commands("_root", M._root.commands)
--end

--local mt = {}
--function mt:__index(k)
  --if configs[k] == nil then
    --require('nvim_lsp/'..k)
  --end
  --return configs[k]
--end

--return setmetatable(M, mt)
-- vim:et ts=2 sw=2
--local lsp = require'nvim_lsp'
--local on_attach_vim = function(client)
  --require'completion'.on_attach(client)
--end

--lsp.tsserver.setup{on_attach=on_attach_vim}

