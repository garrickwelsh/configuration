# Linux Configuration

This configuration is the setup of my linux development environments.

This configuration utilises neovim nightly and the Fira Code font (patched with Nerd Fonts). For neovim nightly I use paru to build an aur Arch package.

## Configuration Installation
Use the shell scripts to use the configuration one of your programs. The shell scripts will create hardlinks so changes will be reflected in your clone of this git repository and will be easy for you to update and save your changes to it.
* hardlink-neovim.sh - Setup neovim configuration
* hardlink-tmux.sh
* hardlink-kitty.sh
* hardlink-starship.sh
* hardlink-alacritty.sh -- Alacritty doesn't work with the Nerd Font patched FiraCode. Devicons on LuaLine will need to be disabled.

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

## Kitty - Configured to use Fira Code patched with NerdFonts
The Arch aur package - __nerd-fonts-fira-code__ will provide a working font for Neovim and Kitty.
This allows for the use of Ligatures and (https://github.com/ryanoasis/vim-devicons)

## Alacritty - Configured to use Fira Code (https://github.com/tonsky/FiraCode)
The terminal font is set to Fira Code. This does not work with the Devicons used in neovim (via LuaLine).

## TODO
Add configurations for the following:
* VSCodium - VSCodium setup and plugins (still a work in progress).
* Neovim - Consolidate configurations for plugins into a smaller number of files to make management of key bindings easier.
	* LSPSaga - Shortcuts for LSPSaga are not fully integrated, there is some overlap with other bindings.
