" Disable lsp for ale before it's setup otherwise issues may occur
let g:ale_disable_lsp = 1
let g:ale_linters = { 'rust': ['cargo', 'rls'] }
let g:ale_linters.rust = ['cargo', 'rls']
let g:ale_rust_rls_toolchain = 'stable'

let g:ale_rust_cargo_use_clippy = executable('cargo-clippy')
let g:ale_sign_column_always = 1
