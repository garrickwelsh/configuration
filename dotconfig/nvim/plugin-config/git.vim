
" gitsigns.vim
" neogit

lua <<EOF

local gitsigns = require('gitsigns')

gitsigns.setup({
	numhl = true,
})

--local neogit = require('neogit')
--neogit.setup({
--  integrations = { diffview = true },
--})

EOF


" Configure Neogit commands
"nnoremap <leader>gn <CMD>Neogit kind=split<CR>
"nnoremap <leader>gp <CMD>Neogit kind=floating<CR>

" Configure Gitsigns commands
nnoremap <leader>gb <CMD>Gitsigns blame_line<CR>
nnoremap <leader>gc <CMD>Gitsigns toggle_current_line_blame<CR>
"nnoremap <leader>gk <CMD>Gitsigns toggle_numhl<CR>
"noremap <leader>gl <CMD>Gitsigns toggle_linehl<CR>

" Git Telescope 
"nnoremap <leader>gc <cmd>Telescope git_commits<cr>
"nnoremap <leader>gh <cmd>Telescope git_bcommits<cr>
"nnoremap <leader>gb <cmd>Telescope git_branches<cr>
"nnoremap <leader>gs <cmd>Telescope git_status<cr>
"nnoremap <leader>gt <cmd>Telescope git_stash<cr>

