
lua << EOF

require('todo-comments').setup()

require('trouble').setup()

local focus = require('focus')
focus.enable = true
EOF

nnoremap <leader>td <CMD>TodoTelescope<CR>
nnoremap <leader>tn <CMD>NvimTreeToggle<CR>
nnoremap <leader>trt <CMD>TroubleToggle<CR>
nnoremap <leader>trw <CMD>TroubleToggle lsp_workspace_diagnostics<CR>
nnoremap <leader>trd <CMD>TroubleToggle lsp_document_diagnostics<CR>
nnoremap <leader>trq <CMD>TroubleToggle quickfix<CR>
nnoremap <leader>trl <CMD>TroubleToggle loclist<CR>
nnoremap <leader>trr <CMD>TroubleToggle lsp_references<CR>

nnoremap <leader>te <CMD>Telescope symbols<CR>
