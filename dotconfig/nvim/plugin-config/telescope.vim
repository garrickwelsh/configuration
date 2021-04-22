
" Find files using Telescope command-line sugar.
nnoremap <leader>tf <cmd>Telescope find_files<cr>
nnoremap <leader>tl <cmd>Telescope live_grep<cr>
nnoremap <leader>tb <cmd>Telescope buffers<cr>
nnoremap <leader>th <cmd>Telescope help_tags<cr>
nnoremap <leader>tg <cmd>Telescope git_files<cr>

" Document symbols works in rust
nnoremap <leader>lds <cmd>Telescope lsp_document_symbols<cr>

nnoremap <leader>lr <cmd>Telescope lsp_references<cr>
nnoremap <leader>lf <cmd>Telescope lsp_definitions<cr>
nnoremap <leader>lws <cmd>Telescope lsp_workspace_symbols<cr>
nnoremap <leader>ldd <cmd>Telescope lsp_document_diagnostics<cr>
nnoremap <leader>lwd <cmd>Telescope lsp_workspace_diagnostics<cr>
