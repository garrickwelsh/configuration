" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')



	" Load plugins
	Plug 'ciaranm/securemodelines'
	Plug 'editorconfig/editorconfig-vim'
	Plug 'justinmk/vim-sneak'

	" GUI enhancements
	Plug 'itchyny/lightline.vim'
	Plug 'machakann/vim-highlightedyank'
	Plug 'andymass/vim-matchup'


	" Fuzzy finder
	Plug 'airblade/vim-rooter'
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'

	" Semantic language support
	Plug 'neoclide/coc.nvim', {'branch': 'release'}


	" Collection of common configurations for the Nvim LSP client
	"Plug 'neovim/nvim-lspconfig'

	" Extensions to built-in LSP, for example, providing type inlay hints
	"Plug 'nvim-lua/lsp_extensions.nvim'

	" Autocompletion framework for built-in LSP
	"Plug 'nvim-lua/completion-nvim'	" VIM enhancements

	"Plug 'kabouzeid/nvim-lspinstall'
	"Plug 'anott03/nvim-lspinstall'

	" Syntactic language support
	Plug 'rust-lang/rust.vim'
	Plug 'cespare/vim-toml'
	Plug 'stephpy/vim-yaml'
	Plug 'rhysd/vim-clang-format'
	Plug 'plasticboy/vim-markdown'
	Plug 'prabirshrestha/async.vim'
	Plug 'prabirshrestha/vim-lsp'
	Plug 'prabirshrestha/asyncomplete.vim'
	Plug 'prabirshrestha/asyncomplete-lsp.vim'
	"Plug 'OmniSharp/omnisharp-vim'
	"Plug 'dense-analysis/ale'


	"Plug 'autozimu/LanguageClient-neovim', {
	"    \ 'branch': 'next',
	"    \ 'do': 'bash install.sh',
	"    \ }


    " Better Syntax Support
    "Plug 'sheerun/vim-polyglot'
    " File Explorer
    "Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    "Plug 'jiangmiao/auto-pairs'


call plug#end()

