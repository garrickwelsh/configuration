--local configs = require 'lspconfig/configs'
--local lspinfo = require 'lspconfig/lspinfo'

--local M = {
--  util = require 'lspconfig/util';
--}

local lsp = require('lspconfig')
local completion = require('completion')

local mapper = function(mode, key, result)
  vim.api.nvim_buf_set_keymap(0, mode, key, "<cmd>lua "..result.."<cr>", {noremap = true, silent = true})
end

-- Set completion on launch
local custom_attach = function()
  completion.on_attach()
  -- Move cursor to the next and previous diagnostic
  mapper('n', '<leader>dn', 'vim.lsp.diagnostic.goto_next()')
  mapper('n', '<leader>dp', 'vim.lsp.diagnostic.goto_prev()')
end

M._root = {}

function M.available_servers()
  return vim.tbl_keys(configs)
end

-- Called from plugin/lspconfig.vim because it requires knowing that the last
-- script in scriptnames to be executed is lspconfig.
function M._root._setup()
  M._root.commands = {
    LspInfo = {
      function()
        lspinfo()
      end;
      "-nargs=?";
      description = '`:LspInfo` Displays attached, active, and configured language servers';
    };
  };

  M.util.create_module_commands("_root", M._root.commands)
end

local mt = {}
function mt:__index(k)
  if configs[k] == nil then
    pcall(require, 'lspconfig/'..k)
  end
  return configs[k]
end

return setmetatable(M, mt)
-- vim:et ts=2 sw=2
