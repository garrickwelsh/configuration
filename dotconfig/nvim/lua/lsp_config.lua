local lsp_status = require('lsp-status')
lsp_status.register_progress()

local lspconfig = require('lspconfig')

-- function to attach completion when setting up lsp
local on_attach = function(client)
    lsp_status.on_attach(client)
    require'completion'.on_attach(client)
end

-- config that activates keymaps and enables snippet support
local function make_config()
  --local capabilities = vim.lsp.protocol.make_client_capabilities()
  --capabilities.textDocument.completion.completionItem.snippetSupport = true
  return {
    capabilities = lsp_status.capabilities,
    -- map buffer local keybindings when the language server attaches
    on_attach = on_attach,
  }
end

require'lspinstall'.setup() -- important

local servers = require'lspinstall'.installed_servers()
for _, server in pairs(servers) do
  local config = make_config()
  config.capabilities = vim.tbl_extend('keep', config.capabilities or {}, lsp_status.capabilities)

  require'lspconfig'[server].setup(config)
end

-- Enable diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = true,
    signs = true,
    update_in_insert = true,
  }
)


-- vim:et ts=2 sw=2
