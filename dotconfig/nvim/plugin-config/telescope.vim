
" Find files using Telescope command-line sugar.
nnoremap <leader>tf <cmd>Telescope find_files<cr>
nnoremap <leader>tl <cmd>Telescope live_grep<cr>
nnoremap <leader>tb <cmd>Telescope buffers<cr>
nnoremap <leader>th <cmd>Telescope help_tags<cr>
nnoremap <leader>tg <cmd>Telescope git_files<cr>
nnoremap <leader>tc <cmd>Telescope colorscheme<cr>
nnoremap <leader>tt <cmd>Telescope file_browser<cr>

" Document symbols for lsp
nnoremap gr <cmd>Telescope lsp_references<cr>
nnoremap gd <cmd>Telescope lsp_definitions<cr>

" Refactoring (LSP)
nnoremap <silent> <leader>ra <cmd>Telescope lsp_code_actions<cr>
nnoremap <silent> <leader>re <cmd>Telescope lsp_range_code_actions<cr>

" Telescope for document symbols and errors
nnoremap <leader>tsw <cmd>Telescope lsp_workspace_symbols<cr>
nnoremap <leader>tsd <cmd>Telescope lsp_document_symbols<cr>
nnoremap <leader>tse <cmd>Telescope lsp_dynamic_workspace_symbols<cr>

nnoremap <leader>tdd <cmd>Telescope lsp_document_diagnostics<cr>
nnoremap <leader>tdw <cmd>Telescope lsp_workspace_diagnostics<cr>

" Git commands 
nnoremap <leader>gc <cmd>Telescope git_commits<cr>
nnoremap <leader>gh <cmd>Telescope git_bcommits<cr>
nnoremap <leader>gb <cmd>Telescope git_branches<cr>
nnoremap <leader>gs <cmd>Telescope git_status<cr>
nnoremap <leader>gt <cmd>Telescope git_stash<cr>


" As these command are context specific let's not map them explicitly to
" Telescope
"nnoremap <leader>tr <cmd>Telescope lsp_references<cr>
"nnoremap <leader>tf <cmd>Telescope lsp_definitions<cr>
