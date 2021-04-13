
let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
let g:gitgutter_sign_modified_removed = emoji#for('collision')

" for e in emoji#list()
"  call append(line('$'), printf('%s (%s)', emoji#for(e), e))
" endfor

" Emoji popup not working.
" set completefunc=emoji#complete
nmap <leader>j :s/:\([^:]\+\):/\=emoji#for(submatch(1), submatch(0))/g<return>
