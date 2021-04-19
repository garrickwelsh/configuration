" Change the signify symbols if desired
let g:signify_sign_add 			= emoji#for('small_blue_diamond')
let g:signify_sign_delete 		= emoji#for('small_orange_diamond')
let g:signify_sign_delete_first_line	= emoji#for('small_red_triangle')
let g:signify_sign_change		= emoji#for('collision')

" Don't display numbers
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1

" Next hunk
nmap <leader>gn <plug>(signify-next-hunk)
nmap <leader>gp <plug>(signify-prev-hunk)

"let g:signify_sign_add 			= '+'
"let g:signify_sign_delete 		= '_'
"let g:signify_sign_delete_first_line	= '-'
"let g:signify_sign_change		= '~'

