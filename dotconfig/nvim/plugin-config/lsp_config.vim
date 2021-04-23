
noremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
noremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
noremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
noremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
noremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
noremap <silent> <C-k> <cmd>lua vim.buf.signature_help()<CR>
noremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
noremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>


" Enable completion
set completeopt=menuone,noselect

let g:compe = {}
let g:compe.enabled = v:true
let g:compe.autocomplete = v:true
let g:compe.debug = v:false
let g:compe.min_length = 1
let g:compe.preselect = 'enable'
let g:compe.throttle_time = 80
let g:compe.source_timeout = 200
let g:compe.incomplete_delay = 400
let g:compe.max_abbr_width = 100
let g:compe.max_kind_width = 100
let g:compe.max_menu_width = 100
let g:compe.documentation = v:true

let g:compe.source = {}
let g:compe.source.path = v:true
let g:compe.source.buffer = v:true
let g:compe.source.calc = v:false
let g:compe.source.nvim_lsp = v:true
let g:compe.source.nvim_lua = v:true
let g:compe.source.vsnip = v:false

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })
