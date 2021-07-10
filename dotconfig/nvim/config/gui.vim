

" deal with colors
if !has('gui_running')
  set t_Co=256
  " set guifont=FiraCode\ Nerd\ Font\ Mono\ Medium:12pt
  set guifont=FiraCode\ Nerd\ Font\ Mono:h14:style=Medium
  " set guifont=Fira\ Code\ Medium:12pt
endif
if (match($TERM, "-256color") != -1) && (match($TERM, "screen-256color") == -1)
  " screen does not (yet) support truecolor
  set termguicolors
endif

