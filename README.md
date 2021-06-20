# Linux Configuration

This configuration is the setup of my linux development environments.

The only things that might not be part of a regular install are neovim nightly and the First Code font. For neovim nightly I use paru to build an Arch package.

## Configuration Installation
Use the shell scripts to use the configuration one of your programs. The shell scripts will create hardlinks so changes will be reflected in your clone of this git repository and will be easy for you to update and save your changes to it.
* hardlink-neovim.sh - Setup neovim configuration
* hardlink-tmux.sh
* hardlink-alacritty.sh
* hardlink-starship.sh

## Neovim Configuration with LSP configured - Neovim 0.5 (nightly)
This configuration is setup to against a nightly build of neovim heading towards the 0.5 release.

Neovim is setup to utilise the the new LSP server. To get neovim up and running with this config you will neeed to do the following:
* Install neovim nightly. Vim-Plug is used to install the required vim plugins (https://github.com/junegunn/vim-plug)
* When you start nvim you will see errors. Simply run __:Plug-Install__ and restart and you should be ready to go.
* To install an lsp use __:LspInstall <language>__ e.g. __:LspInstall rust__ (https://github.com/kabouzeid/nvim-lspinstall)
	* Note: nvim-lspinstall does not yet have support for windows.
* The default lsp key bindings will use Telescope where possible. Please see lsp_config.vim and telescope.vim for the key bindings.

## Tmux
Basic changes the main being the Tmux index starts at one instead of zero.

## Starship
Simple look and feel configured.

## Alacritty - Configured to use Fira Code (https://github.com/tonsky/FiraCode)
Change the terminal font to use Fira Code.

## TODO
Add configurations for the following:
* Neovim
	* Change Signify symbols to be more meaningful.
	* Update lightline so that lsp loading progress is displayed.
* VSCodium - VSCodium setup plugins and neovim setup is yet to be done.
* Kitty - Kitty has font ligatures that Alacritty does not. Need to setup a configuration for it.
