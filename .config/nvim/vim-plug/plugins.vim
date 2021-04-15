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



	" Syntactic language support
	Plug 'rust-lang/rust.vim'
	Plug 'cespare/vim-toml'
	Plug 'stephpy/vim-yaml'
	Plug 'rhysd/vim-clang-format'
	Plug 'plasticboy/vim-markdown'

	" Git Plugins
	if has('nvim') || has('patch-8.0.902')
		Plug 'mhinz/vim-signify'
	else
		Plug 'mhinz/vim-signify', { 'branch' : 'legacy' }
	endif
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-rhubarb'
	Plug 'junegunn/gv.vim'

	" Use Emojis in neovim
	Plug 'junegunn/vim-emoji'

	" gruvbox colour schemes
	Plug 'morhetz/gruvbox'
	
	" Plug 'dense-analysis/ale'
	
	" The plugins below do not appear useful and have been removed.
	" Plug 'prabirshrestha/async.vim'
	" Plug 'prabirshrestha/vim-lsp'
	" Plug 'prabirshrestha/asyncomplete.vim'
	" Plug 'prabirshrestha/asyncomplete-lsp.vim'

	" Collection of common configurations for the Nvim LSP client
	" Plug 'neovim/nvim-lspconfig'

	" Extensions to built-in LSP, for example, providing type inlay hints
	" Plug 'nvim-lua/lsp_extensions.nvim'

	" Autocompletion framework for built-in LSP
	" Plug 'nvim-lua/completion-nvim'	" VIM enhancements
call plug#end()

