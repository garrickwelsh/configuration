
" <leader>s for Rg search
noremap <leader>bs :Rg
let g:fzf_layout = { 'down': '~20%' }
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --exclude .git '.shellescape(<q-args>), 1)

function! s:list_cmd()
  let base = fnamemodify(expand('%'), ':h:.:S')
  return base == '.' ? 'fd --type file --follow' : printf('fd --type file --follow | proximity-sort %s', shellescape(expand('%')))
endfunction

" List buffers in git
noremap <leader>bf :GFiles<Cr>
" List open buffers
noremap <leader>bb :Buffers<CR>
