" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

	" Load plugins
	Plug 'editorconfig/editorconfig-vim' " reads .editoconfig settings and applies them
	
	" GUI enhancements
	Plug 'machakann/vim-highlightedyank'

	" Fuzzy finder
	Plug 'airblade/vim-rooter'

	" Syntactic language support
	Plug 'sheerun/vim-polyglot'
	Plug 'stephpy/vim-yaml'
	
	if !exists('g:vscode')


		" Syntax mark indent alignment
		Plug 'nathanaelkane/vim-indent-guides'

		" Enable devicons
		Plug 'ryanoasis/vim-devicons'

		" colour schemes
		Plug 'morhetz/gruvbox'
		Plug 'folke/tokyonight.nvim'	
		Plug 'rafamadriz/neon'
		Plug 'jsit/toast.vim'
		Plug 'joshdick/onedark.vim'

		if has('nvim-0.5')
			" Collection of common configurations for the Nvim LSP client
			Plug 'neovim/nvim-lspconfig'
			Plug 'kabouzeid/nvim-lspinstall'
			" Autocompletion framework for built-in LSP
			Plug 'nvim-lua/completion-nvim'	" VIM enhancements
			"Plug 'hrsh7th/nvim-compe' "Autocompletion plugin for lsp

			" Extensions to built-in LSP, for example, providing type inlay hints
			Plug 'nvim-lua/lsp_extensions.nvim'

			" Popup library
			Plug 'nvim-lua/popup.nvim'
			" Module to interact with system processes
			Plug 'nvim-lua/plenary.nvim'
			" Fast finder 
			Plug 'nvim-telescope/telescope.nvim'

			" Lsp saga light-weight plugin for a performant UI.
			Plug 'glepnir/lspsaga.nvim'

			" Tree-sitter
			Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
			Plug 'nvim-treesitter/completion-treesitter'

			" Lualine
			Plug 'hoob3rt/lualine.nvim'
			Plug 'arkav/lualine-lsp-progress'
			"Plug 'garrickwelsh/lualine-lsp-progress'

			" Colourise errors
			Plug 'folke/lsp-colors.nvim'

			" Git plugins
			Plug 'TimUntersberger/neogit'
			Plug 'lewis6991/gitsigns.nvim'
			
			" Rust tools for nvim lsp
			Plug 'simrat39/rust-tools.nvim'


			" Play stuff
			Plug 'tjdevries/train.nvim'
		endif
	endif
call plug#end()

