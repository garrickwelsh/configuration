local lspconfig = require('lspconfig')
local lspinstall = require('lspinstall')

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
lspconfig.rust_analyzer.setup(make_config())

lspinstall.setup() -- important

local servers = lspinstall.installed_servers()
for _, server in pairs(servers) do
  local config = make_config()

  lspconfig[server].setup(config)
end

require('rust-tools').setup()

-- vim:et ts=2 sw=2
