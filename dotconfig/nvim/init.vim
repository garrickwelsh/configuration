" If you can't see Tux  and the vim logo  you don't have nerd fonts installed.

" Load nvim with sane settings
source $HOME/.config/nvim/config/setup.vim
source $HOME/.config/nvim/config/keybindings.vim
source $HOME/.config/nvim/config/gui.vim
source $HOME/.config/nvim/config/nvim.vim

" Vim-Plug to load plugins
source $HOME/.config/nvim/vim-plug/plugins.vim

if !exists('g:vscode') " if using vscode don't use lsp telescope etc.
	source $HOME/.config/nvim/plugin-config/gruvbox.vim
	source $HOME/.config/nvim/plugin-config/fzf.vim
	"source $HOME/.config/nvim/plugin-config/lightline.vim
	source $HOME/.config/nvim/plugin-config/signify.vim
	if has('nvim-0.5')
		lua require('lsp_config')
		lua require('lualine_config')
		source $HOME/.config/nvim/plugin-config/lsp.vim
		source $HOME/.config/nvim/plugin-config/lspsaga.vim
		lua require('rust-tools-config')
		source $HOME/.config/nvim/plugin-config/rust-tools.vim
		source $HOME/.config/nvim/plugin-config/telescope.vim
		source $HOME/.config/nvim/plugin-config/treesitter.vim
	endif
endif

