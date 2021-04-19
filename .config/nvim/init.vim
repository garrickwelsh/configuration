
" Load nvim with sane settings to start with
source $HOME/.config/nvim/settings/setup.vim
source $HOME/.config/nvim/settings/keybindings.vim
source $HOME/.config/nvim/settings/gui.vim
source $HOME/.config/nvim/settings/nvim.vim

" Plugins Load Plug
source $HOME/.config/nvim/vim-plug/plugins.vim

source $HOME/.config/nvim/plugin-config/ale.vim
if !has('nvim-0.5')
	source $HOME/.config/nvim/plugin-config/coc-settings.vim
endif
source $HOME/.config/nvim/plugin-config/coc-explorer.vim
source $HOME/.config/nvim/plugin-config/emoji.vim
source $HOME/.config/nvim/plugin-config/gruvbox.vim
source $HOME/.config/nvim/plugin-config/fzf.vim
source $HOME/.config/nvim/plugin-config/lightline.vim
source $HOME/.config/nvim/plugin-config/signify.vim
source $HOME/.config/nvim/plugin-config/telescope.vim
if has('nvim-0.5')
	lua require('lsp_config')
	source $HOME/.config/nvim/plugin-config/lsp_config.vim
endif
