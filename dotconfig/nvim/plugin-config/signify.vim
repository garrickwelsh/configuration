" Change the signify symbols if desired. Note it is possible to replace with nerd fonts like 
let g:signify_sign_add               = '+' 
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '!'
let g:signify_sign_change_delete     = g:signify_sign_change . g:signify_sign_delete_first_line


" Don't display numbers
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1

" Next hunk
nmap <leader>gn <plug>(signify-next-hunk)
nmap <leader>gp <plug>(signify-prev-hunk)
