" Register the components:
let g:lightline = {}
let g:lightline.component_expand = {
  \   'linter_warnings': 'lightline#lsp#warnings',
  \   'linter_errors': 'lightline#lsp#errors',
  \   'linter_info': 'lightline#lsp#info',
  \   'linter_hints': 'lightline#lsp#hints',
  \   'linter_ok': 'lightline#lsp#ok',
  \   'status': 'lightline#lsp#status',
  \   'fugitive': 'fugitive#statusline',
  \ }

" Set color to the components:
let g:lightline.component_type = {
  \   'linter_warnings': 'warning',
  \   'linter_errors': 'error',
  \   'linter_info': 'info',
  \   'linter_hints': 'hints',
  \   'linter_ok': 'left',
  \ }

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
