
lua <<EOF
local saga = require('lspsaga')
saga.init_lsp_saga {
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  border_style = "round",
}
EOF

noremap <silent> gh <cmd>lua require('lspsaga.provider').lsp_finder()<CR>
" code action
nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>

" Use saga instead of default info
nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>

" show signature help
nnoremap <silent> gs <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>

" rename
nnoremap <silent><leader>cr <cmd>lua require('lspsaga.rename').rename()<CR>

" preview definition
nnoremap <silent> gp <cmd>lua require'lspsaga.provider'.preview_definition()<CR>

" jump diagnostic
nnoremap <silent> [e <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>
nnoremap <silent> ]e <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>

" float terminal also you can pass the cli command in open_float_terminal function
nnoremap <silent><leader>st <cmd>lua require('lspsaga.floaterm').open_float_terminal()<CR>
tnoremap <silent><C-W> <C-\><C-n>:lua require('lspsaga.floaterm').close_float_terminal()<CR>

"autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost *
"			\ <cmd>lua require('lspsaga.diagnostic').show_line_diagnostics()<CR>
