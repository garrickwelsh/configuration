" Map leader character
let mapleader = "\<Space>"

" Let's not be backwards compatible with vi
set nocompatible
set number
filetype off
" Set if we wish to start using folds more often. :smile:
"set foldcolumn=2

" Disable lsp for ale before it's setup otherwise issues may occur
let g:ale_disable_lsp = 1

source $HOME/.config/nvim/vim-plug/plugins.vim

" Plugins Load Plug

"set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
"set list

if has('nvim')
    set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor
    set inccommand=nosplit
    noremap <C-q> :confirm qall<CR>
end

" deal with colors
if !has('gui_running')
  set t_Co=256
endif
if (match($TERM, "-256color") != -1) && (match($TERM, "screen-256color") == -1)
  " screen does not (yet) support truecolor
  set termguicolors
endif



autocmd BufReadPost *.rs setlocal filetype=rust
"autocmd BufReadPost *.cs setlocal filetype=

" Required for operations modifying multiple buffers like rename.
set hidden

" Open hotkeys

" Open new file adjacent to current file
nnoremap <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
noremap <leader>bf :GFiles<Cr>
noremap <leader>bb :Buffers<CR>

" Quick-save
nmap <leader>w :w<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" <leader><leader> toggles between buffers
nnoremap <leader><leader> <c-^>

" <leader>s for Rg search
noremap <leader>bs :Rg
let g:fzf_layout = { 'down': '~20%' }
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --exclude .git '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

function! s:list_cmd()
  let base = fnamemodify(expand('%'), ':h:.:S')
  return base == '.' ? 'fd --type file --follow' : printf('fd --type file --follow | proximity-sort %s', shellescape(expand('%')))
endfunction

" <leader>, shows/hides hidden characters
nnoremap <leader>, :set invlist<cr>

" <leader>q shows stats
nnoremap <leader>q g<c-g>



source $HOME/.config/nvim/signify.vim
source $HOME/.config/nvim/coc-settings.vim
source $HOME/.config/nvim/coc-explorer.vim
source $HOME/.config/nvim/lightline.vim
source $HOME/.config/nvim/emoji.vim
source $HOME/.config/nvim/ale.vim
