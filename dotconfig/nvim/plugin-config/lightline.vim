"function LspStatus()
"	return "Oi!!!"
"endfunction

" Register the components:
let g:lightline = {}

let g:lightline.component_expand = {
\		'fugitive' : 'fugitive#statusline',
\	}

let g:lightline.component_function = {
\		'filetype': 'MyFiletype',
\		'fileformat': 'MyFileformat',
\	}
"\		'lsp_status' : 'LspStatus',


function! MyFiletype()
	return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
	return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

" Add the components to the lightline:
let g:lightline.active = {
\			'left': [
\				[ 'mode', 'paste' ],
\				[ 'filename', 'modified', 'readonly'],
\				[ 'lsp_status' ],
\			],
\			'right': [ 
\				[ 'fugitive' ],
\				[ 'lsp_info', 'lsp_hints', 'lsp_errors', 'lsp_warnings', 'lsp_ok' ], 
\				[ 'percent' ],
\				[ 'fileformat', 'fileencoding', 'filetype' ],
\			],
\ }


let g:lightline.inactive = {
\ 'left': [ [ 'filename' ] ],
\ 'right': [ [ 'lineinfo' ],
\            [ 'percent' ] ] }

" register compoments:
call lightline#lsp#register()


