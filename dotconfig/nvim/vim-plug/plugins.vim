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

	" Find the git folder and make it the root for the editing.
	Plug 'airblade/vim-rooter'

	" Syntactic language support
	Plug 'sheerun/vim-polyglot'
	Plug 'stephpy/vim-yaml'
	
	if !exists('g:vscode')


		" Syntax mark indent alignment
		Plug 'nathanaelkane/vim-indent-guides'

		" Enable devicons
		Plug 'ryanoasis/vim-devicons'
		Plug 'kshenoy/vim-signature'

		" colour schemes
		Plug 'folke/tokyonight.nvim'	
		Plug 'joshdick/onedark.vim'
		Plug 'sainnhe/sonokai'
		Plug 'dracula/vim', { 'as': 'dracula' } 
		Plug 'arcticicestudio/nord-vim'
		Plug 'sainnhe/gruvbox-material'
		Plug 'morhetz/gruvbox'

		if has('nvim-0.5')
			" Git plugins
			"Plug 'TimUntersberger/neogit' " Neogit causes nvim to crash with
			"too may files open error. No longer used until it is resolved.
			Plug 'tpope/vim-fugitive'
			Plug 'lewis6991/gitsigns.nvim'
			Plug 'sindrets/diffview.nvim'

			" Collection of common configurations for the Nvim LSP client
			Plug 'neovim/nvim-lspconfig'
			Plug 'williamboman/nvim-lsp-installer'

			" Autocompletion framework for built-in LSP
			Plug 'nvim-lua/completion-nvim'	" VIM enhancements
			Plug 'hrsh7th/nvim-compe' "Autocompletion plugin for lsp
			Plug 'ray-x/lsp_signature.nvim'

			" Extensions to built-in LSP, for example, providing type inlay hints
			Plug 'nvim-lua/lsp_extensions.nvim'
			Plug 'onsails/lspkind-nvim'

			" Popup library
			Plug 'nvim-lua/popup.nvim'
			" Module to interact with system processes
			Plug 'nvim-lua/plenary.nvim'
			" Fast finder 
			Plug 'nvim-telescope/telescope.nvim'
			" Lsp saga light-weight plugin for a performant UI.
			Plug 'glepnir/lspsaga.nvim'

			" Rust tools for nvim lsp
			Plug 'simrat39/rust-tools.nvim'

			" Tree-sitter
			Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
			Plug 'nvim-treesitter/completion-treesitter'
			if !(has("win64") || has("win32"))
				Plug 'romgrk/nvim-treesitter-context'
			endif

			" Comment code
			Plug 'b3nj5m1n/kommentary'

			" Lualine
			Plug 'hoob3rt/lualine.nvim'
			Plug 'arkav/lualine-lsp-progress'
			"Plug 'garrickwelsh/lualine-lsp-progress'

			" Icons
			Plug 'kyazdani42/nvim-web-devicons'

			" Telescope insert emoji
			Plug 'nvim-telescope/telescope-symbols.nvim'

			" Colourise errors
			Plug 'folke/lsp-colors.nvim'

			" todo List
			Plug 'folke/todo-comments.nvim'
			Plug 'folke/trouble.nvim'

			" Lua tree
			Plug 'kyazdani42/nvim-tree.lua'

			" Focus windows when moving between a split view
			Plug 'beauwilliams/focus.nvim'

			" Debuggers
			Plug 'mfussenegger/nvim-dap'
			Plug 'theHamsta/nvim-dap-virtual-text'
			Plug 'rcarriga/nvim-dap-ui'
			Plug 'nvim-telescope/telescope-dap.nvim'

			" Play stuff
			" Plug 'tjdevries/train.nvim'
		endif
	endif
call plug#end()

