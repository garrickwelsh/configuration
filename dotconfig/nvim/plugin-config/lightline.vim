let g:lightline_lsp_signs_ok = 1

lua << END
local lsp_status = require('lsp-status')
lsp_status.register_progress()

local lspconfig = require('lspconfig')

-- Some arbitrary servers
lspconfig.clangd.setup({
  handlers = lsp_status.extensions.clangd.setup(),
  init_options = {
    clangdFileStatus = true
  },
  on_attach = lsp_status.on_attach,
  capabilities = lsp_status.capabilities
})

lspconfig.pyls_ms.setup({
  handlers = lsp_status.extensions.pyls_ms.setup(),
  settings = { python = { workspaceSymbols = { enabled = true }}},
  on_attach = lsp_status.on_attach,
  capabilities = lsp_status.capabilities
})

lspconfig.omnisharp.setup({
  on_attach = lsp_status.on_attach,
  capabilities = lsp_status.capabilities
})

lspconfig.rust_analyzer.setup({
  on_attach = lsp_status.on_attach,
  capabilities = lsp_status.capabilities
})
END

" Statusline
function! LspStatus() abort
  if luaeval('#vim.lsp.buf_get_clients() > 0')
    return luaeval("require('lsp-status').status()")
  endif

  return ''
endfunction

let g:lightline = {
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\				[ 'filename', 'modified', 'readonly'], 
	\				[ 'fugitive' ],
	\				[ 'lsp_status' ],
	\				[ 'relativepath' ],
	\			],
	\   'right': [ 
	\              [ 'percent' ],
	\              [ 'fileformat', 'fileencoding', 'filetype' ]
	\			]
	\ },
	\ 'component_expand': {
	\   'lsp_warnings': 'lightline_lsp#warnings',
	\   'lsp_errors':   'lightline_lsp#errors',
	\   'lsp_ok':       'lightline_lsp#ok',
	\ },
	\ 'component_type': {
	\   'lsp_warnings': 'warning',
	\   'lsp_errors':   'error',
	\   'lsp_ok':       'middle',
	\ },
	\ 'component_function': {
	\   'lsp_status': 'LspStatus',
	\	'fugitive': 'fugitive#statusline'
	\ },
\ }
