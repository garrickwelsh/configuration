
" gitsigns.vim
" gitblame
" neogit

lua <<EOF

local gitsigns = require('gitsigns')

gitsigns.setup()

local neogit = require('neogit')
neogit.setup()

EOF
