
" gitsigns.vim
" neogit

lua <<EOF

local gitsigns = require('gitsigns')

gitsigns.setup({
	numhl = true,
})

local neogit = require('neogit')
neogit.setup()

EOF


" Configure Neogit commands
nnoremap <leader>nn <CMD>Neogit kind=split<CR>
nnoremap <leader>np <CMD>Neogit kind=floating<CR>

" Configure Gitsigns commands
nnoremap <leader>nb <CMD>Gitsigns blame_line<CR>
nnoremap <leader>nc <CMD>Gitsigns toggle_current_line_blame<CR>
nnoremap <leader>nk <CMD>Gitsigns toggle_numhl<CR>
nnoremap <leader>nl <CMD>Gitsigns toggle_linehl<CR>

" Git Telescope 
nnoremap <leader>gc <cmd>Telescope git_commits<cr>
nnoremap <leader>gh <cmd>Telescope git_bcommits<cr>
nnoremap <leader>gb <cmd>Telescope git_branches<cr>
nnoremap <leader>gs <cmd>Telescope git_status<cr>
nnoremap <leader>gt <cmd>Telescope git_stash<cr>

