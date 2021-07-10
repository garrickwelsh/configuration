local lspconfig = require('lspconfig')

-- function to attach completion when setting up lsp
local on_attach = function(client)
    require'completion'.on_attach(client)
end

-- config that activates keymaps and enables snippet support
local function make_config()
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities.textDocument.completion.completionItem.snippetSupport = true
  return {
    capabilities = capabilities,
    on_attach = on_attach,
  }
end

-- Configure rust-analyzer (I use an Arch package instead of LspInstall)
require'lspconfig'.rust_analyzer.setup(make_config())

require'lspinstall'.setup() -- important

local servers = require'lspinstall'.installed_servers()
for _, server in pairs(servers) do
  local config = make_config()

  require'lspconfig'[server].setup(config)
end

-- Enable diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
--  require('lsp_extensions.workspace.diagnostic').handler, {
    underline = true,
    virtual_text = {
      spacing = 4,
      prefix = "▶",
    },
    update_in_insert = true,
    severity_sort = true,
    signs = true,
  }
)


-- vim:et ts=2 sw=2
