
" let g:gitgutter_sign_added = emoji#for('arrow_right')
" let g:gitgutter_sign_modified = emoji#for('part_alteration_mark')
" let g:gitgutter_sign_removed = emoji#for('arrow_left')
" let g:gitgutter_sign_modified_removed = emoji#for('left_right_arrow')

" for e in emoji#list()
"  call append(line('$'), printf('%s (%s)', emoji#for(e), e))
" endfor

" Emoji popup not working.
" set completefunc=emoji#complete
nmap <leader>j :s/:\([^:]\+\):/\=emoji#for(submatch(1), submatch(0))/g<return>
