local util = require'lspconfig/util'
local pid = vim.fn.getpid()
local omnisharp_bin = "/usr/bin/omnisharp"

require'lspconfig'.omnisharp.setup{
  cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid) };
--  root_dir = util.root_pattern(".sln", ".csproj");

}

require'lspconfig'.rust_analyzer.setup{
}

require'lspconfig'.clangd {

}

-- vim:et ts=2 sw=2
