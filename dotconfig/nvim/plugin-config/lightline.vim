" Register the components:
let g:lightline = {}

let g:lightline.component_expand = {
\		'fugitive' : 'fugitive#statusline',
\		'lsp_status' : 'LspStatus',
\	}
" Add the components to the lightline:
let g:lightline.active = {
\			'left': [
\				[ 'mode', 'paste' ],
\				[ 'filename', 'modified', 'readonly'], 
\				[ 'fugitive' ],
\				[ 'lsp_info', 'lsp_hints', 'lsp_errors', 'lsp_warnings', 'lsp_ok' ], [ 'lsp_status' ],
\				[ 'relativepath' ]],
\			'right': [ 
\				[ 'percent' ],
\				[ 'fileformat', 'fileencoding', 'filetype' ]
\			],
\ }

let g:lightline.inactive = {
\ 'left': [ [ 'filename' ] ],
\ 'right': [ [ 'lineinfo' ],
\            [ 'percent' ] ] }

" register compoments:
call lightline#lsp#register()

lua <<EOF
function lightline_lsp_status()
	local lsp_status = require('lsp-status')
	local lsp_messages = lsp_status.messages()
	if lsp_messages.count() > 0 then
		return 'Hello' + lsp_messages[1].title
	end
	return 'Hello'
end
EOF

function! LspStatus() abort
  if luaeval('#vim.lsp.buf_get_clients() > 0')
    return luaeval("require('lsp-status').status()")
    "return luaeval('lightline_lsp_status()')
  endif

  return ''
endfunction

augroup rust
  autocmd!
  autocmd User lsp_diagnostics_updated call lightline#update()
augroup END

