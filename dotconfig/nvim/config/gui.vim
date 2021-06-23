

" deal with colors
if !has('gui_running')
  set t_Co=256
  set guifont=Fira\ Code\ Medium:11pt
endif
if (match($TERM, "-256color") != -1) && (match($TERM, "screen-256color") == -1)
  " screen does not (yet) support truecolor
  set termguicolors
endif

