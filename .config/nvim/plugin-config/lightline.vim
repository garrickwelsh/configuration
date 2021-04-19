let g:lightline_lsp_signs_ok = 1


let g:lightline = {
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\ 	     [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified', 'relativepath' ] ],
	\   'right': [ [ 'lsp_errors', 'lsp_warnings', 'lsp_ok', 'lineinfo' ],
	\              [ 'percent' ],
	\              [ 'fileformat', 'fileencoding', 'filetype' ] ]
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
\ }
