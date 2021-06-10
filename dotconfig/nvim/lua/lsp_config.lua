--local lsp_status = require('lsp-status')
--lsp_status.register_progress()

local omnisharp_bin = "/usr/bin/omnisharp"
local pid = vim.fn.getpid()
local util = require'lspconfig/util'
local lsp_config = require('lspconfig')



lsp_config.omnisharp.setup{
  cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid) },
--  on_attach = lsp_status.on_attach,
--  capabilities = lsp_status.capabilities
}

lsp_config.rust_analyzer.setup{
--  on_attach = lsp_status.on_attach,
--  capabilities = lsp_status.capabilities
}

lsp_config.clangd.setup {
--  handlers = lsp_status.extensions.clangd.setup(),
--  init_options = {
--    clangdFileStatus = true
--  },
--  on_attach = lsp_status.on_attach,
--  capabilities = lsp_status.capabilities
}

--require'lspconfig'.rls.setup {
--
--}

-- vim:et ts=2 sw=2
