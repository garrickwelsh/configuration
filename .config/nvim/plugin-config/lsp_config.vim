
noremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
noremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
noremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
noremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
noremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
noremap <silent> <C-k> <cmd>lua vim.buf.signature_help()<CR>
noremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
noremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

