
" Load nvim with sane settings to start with
source $HOME/.config/nvim/config/setup.vim
source $HOME/.config/nvim/config/keybindings.vim
source $HOME/.config/nvim/config/gui.vim
source $HOME/.config/nvim/config/nvim.vim

" Plugins Load Plug
source $HOME/.config/nvim/vim-plug/plugins.vim

if !exists('g:vscode')
	source $HOME/.config/nvim/plugin-config/emoji.vim
	source $HOME/.config/nvim/plugin-config/gruvbox.vim
	source $HOME/.config/nvim/plugin-config/fzf.vim
	source $HOME/.config/nvim/plugin-config/lightline.vim
	source $HOME/.config/nvim/plugin-config/signify.vim
	if has('nvim-0.5')
		lua require('lsp_config')
		source $HOME/.config/nvim/plugin-config/lsp_config.vim
		lua require('rust-tools-config')
		source $HOME/.config/nvim/plugin-config/rust-tools.vim
		source $HOME/.config/nvim/plugin-config/telescope.vim
	endif
endif

