
lua <<EOF
require("lspsaga").init_lsp_saga({
  -- use_saga_diagnostic_sign = true
  error_sign = "",
  warn_sign = "",
  hint_sign = "",
  infor_sign = "",
  -- dianostic_header_icon = '   ',
  code_action_icon = "💡",
  code_action_prompt = { enable = true, sign = true, sign_priority = 20, virtual_text = true },
  finder_definition_icon = '  ',
  finder_reference_icon = '  ',
  -- max_preview_lines = 10, -- preview lines of lsp_finder and definition preview
  finder_action_keys = {
    open = "e",
    vsplit = "v",
    split = "s",
    quit = "q",
    scroll_down = "<C-f>",
    scroll_up = "<C-b>", -- quit can be a table
  },
  code_action_keys = { quit = "<ESC>", exec = "<CR>" },
})
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
