# Linux Configuration

This configuration is setup my linux development environments.

My configuration was developed for my Arch linux setup. So there are things setup that I don't know if they will be more difficult on another distribution.

## Configuration Installation
Use the shell scripts to use the configuration one of your programs. The shell scripts will create hardlinks so changes will be reflected in your clone of this git repository and will be easy for you to update and save your changes to it.
* hardlink-neovim.sh - Setup neovim configuration

## Neovim Configuration with LSP configured - Neovim 0.5 (nightly)
This configuration is setup to against a nightly build of neovim heading towards the 0.5 release.

I have set it up to utilise the the new LSP server. To get it up and running you will neeed to do the following:
* Install neovim nightly. Vim-Plug is used to install the required vim plugins (https://github.com/junegunn/vim-plug)
* When you start nvim you will see errors. Simply run :Plug-Install and restart and you should be ready to go.
* To install an lsp use __:LspInstall <language>__ e.g. __:LspInstall rust__ (https://github.com/kabouzeid/nvim-lspinstall)
	* Note: nvom-lspinstall does not yet have support for windows.
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
