
let g:gruvbox_transparent_bg = 1
let g:gruvbox_contrast_dark = 'hard'

" g:tokyonight_style available "day", "night", "storm"
let g:tokyonight_style="day"
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

" g:sonokai_style "espresso", "maia", "shusia", "andromeda", "atlantis", "default" 
let g:sonokai_style='atlantis'

let g:neon_style="Dark"
" let g:neon_style="Light"


" Available values: 'hard', 'medium'(default), 'soft'
let g:gruvbox_material_background = 'hard'

" The vim colour scheme
autocmd vimenter * ++nested colorscheme gruvbox-material

