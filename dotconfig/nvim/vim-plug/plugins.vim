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
	Plug 'itchyny/lightline.vim'
	Plug 'machakann/vim-highlightedyank'


	" Fuzzy finder
	Plug 'airblade/vim-rooter'
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'

	" Syntactic language support
	Plug 'rust-lang/rust.vim'
	Plug 'cespare/vim-toml'
	Plug 'stephpy/vim-yaml'
	Plug 'rhysd/vim-clang-format'
	Plug 'plasticboy/vim-markdown'
	
	if !exists('g:vscode')
		" Syntax mark indent alignment
		Plug 'nathanaelkane/vim-indent-guides'

		" Git Plugins
		Plug 'mhinz/vim-signify'
		" More Git Plugins
		Plug 'tpope/vim-fugitive'
		Plug 'tpope/vim-rhubarb'
		Plug 'junegunn/gv.vim'

		" Use Emojis in neovim
		Plug 'junegunn/vim-emoji'

		" gruvbox colour schemes
		Plug 'morhetz/gruvbox'
		" Plugin 'joshdick/onedark.vim'
		
		if has('nvim-0.5')
			" Collection of common configurations for the Nvim LSP client
			Plug 'neovim/nvim-lspconfig'
			Plug 'kabouzeid/nvim-lspinstall'
			Plug 'hrsh7th/nvim-compe' "Autocompletion plugin for lsp

			" Extensions to built-in LSP, for example, providing type inlay hints
			Plug 'nvim-lua/lsp_extensions.nvim'

			" Autocompletion framework for built-in LSP
			Plug 'nvim-lua/completion-nvim'	" VIM enhancements

			" Display lsp lightline in neovim
			Plug 'nvim-lua/lsp-status.nvim' " lsp Status functions to use in lightline
			Plug 'josa42/nvim-lightline-lsp'
			" Awesome rust tools for nvim lsp
			Plug 'simrat39/rust-tools.nvim'

			" Popup library
			Plug 'nvim-lua/popup.nvim'
			" Module to interact with system processes
			Plug 'nvim-lua/plenary.nvim'
			" Fast finder fzf
			Plug 'nvim-telescope/telescope.nvim'
		endif
	endif
call plug#end()

