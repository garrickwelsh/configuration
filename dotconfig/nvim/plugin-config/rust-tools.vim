
nnoremap <silent><nowait> <leader>rr :lua require('rust-tools.runnables').runnables({ use_telescope = true })<CR>
nnoremap <silent><nowait> <leader>rem :lua require'rust-tools.expand_macro'.expand_macro()<CR>
nnoremap <silent><nowait> <leader>ru :lua require'rust-tools.move_item'.move_item(true)<CR>
nnoremap <silent><nowait> <leader>rd :lua require'rust-tools.move_item'.move_item(false)<CR>
nnoremap <silent><nowait> <leader>rh :lua require'rust-tools.hover_actions'.hover_actions()<CR>

"
" autocmd FileType rust :lua require('rust-tools.inlay_hints').set_inlay_hints({ show_parameter_hints = true, parameter_hints_prefix = "<-", other_hints_prefix  = "=>"})
" nnoremap <silent><nowait> <leader>ri :lua require('rust-tools.inlay_hints').toggle_inlay_hints({ show_parameter_hints = true, parameter_hints_prefix = "<-", other_hints_prefix  = "=>"})<CR>
