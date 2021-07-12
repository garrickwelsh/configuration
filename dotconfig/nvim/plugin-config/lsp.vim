""""""""""""""""""" Lsp options """""""""""""""""""""""""""""""""""
set signcolumn=yes

" Set updatetime for CursorHold
" 300ms of no cursor movement to trigger CursorHold
set updatetime=300
" Enable completion
set completeopt=menuone,noselect

""""""""""""""""" Setup """"""""""""""""""""""""""""""""""""""""""""
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


""""""""""""""""""""" Code navigation shortcuts """"""""""""""""""""

nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
" nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR> " LspSaga now used.
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
" See telescope.vim for mappings
"nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> ga    <cmd>lua vim.lsp.buf.code_action()<CR>

nnoremap <silent> <leader>rn <cmd>lua vim.lsp.buf.rename()<CR>')
nnoremap <silent> <leader>rf <cmd>lua vim.lsp.buf.formatting()<CR>')

" Goto previous/next diagnostic warning/error
nnoremap <silent> g[ <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> g] <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" Use tab for completions
imap <tab> <Plug>(completion_smart_tab)
imap <s-tab> <Plug>(completion_smart_s_tab)


noremap <silent> gh <cmd>lua require('lspsaga.provider').lsp_finder()<CR>
" code action
nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
"
" rename
nnoremap <silent><leader>cr <cmd>lua require('lspsaga.rename').rename()<CR>

" Use saga instead of default info
nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>

" show signature help
nnoremap <silent> gs <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>

" preview definition
nnoremap <silent> gp <cmd>lua require'lspsaga.provider'.preview_definition()<CR>

" jump diagnostic
nnoremap <silent> [e <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>
nnoremap <silent> ]e <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>

" float terminal also you can pass the cli command in open_float_terminal function
nnoremap <silent><leader>st <cmd>lua require('lspsaga.floaterm').open_float_terminal()<CR>
tnoremap <silent><C-W> <C-\><C-n>:lua require('lspsaga.floaterm').close_float_terminal()<CR>

nnoremap <silent><nowait> <leader>rr :lua require('rust-tools.runnables').runnables({ use_telescope = true })<CR>
nnoremap <silent><nowait> <leader>rem :lua require'rust-tools.expand_macro'.expand_macro()<CR>
nnoremap <silent><nowait> <leader>ru :lua require'rust-tools.move_item'.move_item(true)<CR>
nnoremap <silent><nowait> <leader>rd :lua require'rust-tools.move_item'.move_item(false)<CR>
nnoremap <silent><nowait> <leader>rh :lua require'rust-tools.hover_actions'.hover_actions()<CR>

""""""""""""""""" Auto Cmds """"""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Show diagnostic popup on cursor hold
autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics({focusable = false})

" Enable compeletion for all buffers not just lsp
autocmd BufEnter * lua require'completion'.on_attach()

" Show inlay hints when things happen
autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost *.rs :lua require'lsp_extensions'.inlay_hints{ prefix = '=> ', parameter_hints_prefix = "<-", highlight = "Comment", enabled = {"TypeHint", "ChainingHint", "ParameterHint"} }
