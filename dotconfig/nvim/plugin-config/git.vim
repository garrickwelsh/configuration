
" gitsigns.vim
" gitblame
" neogit

lua <<EOF

local gitsigns = require('gitsigns')

gitsigns.setup()

local neogit = require('neogit')
neogit.setup()

EOF

" Configure Gitsigns commands
nnoremap <leader>gb <CMD>Gitsigns blame_line<CR>
nnoremap <leader>gc <CMD>Gitsigns toggle_current_line_blame<CR>
nnoremap <leader>gn <CMD>Gitsigns toggle_numhl<CR>
nnoremap <leader>gl <CMD>Gitsigns toggle_linehl<CR>
nnoremap <leader>gs <CMD>Gitsigns stage_buffer<CR>
nnoremap <leader>gh <CMD>Gitsigns stage_hunk<CR>
" Configure Gitsigns commands
nnoremap <leader>gn <CMD>Neogit kind=split<CR>
nnoremap <leader>gp <CMD>Neogit kind=floating<CR>
