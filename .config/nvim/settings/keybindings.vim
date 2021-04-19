"
" Map leader character
let mapleader = "\<Space>"

" <leader>, shows/hides hidden characters
nnoremap <leader>, :set invlist<cr>

" <leader>q shows stats
nnoremap <leader>q g<c-g>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open hotkeys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open new file adjacent to current file
nnoremap <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Quick-save
nmap <leader>w :w<CR>

" <leader><leader> toggles between buffers
nnoremap <leader><leader> <c-^>


