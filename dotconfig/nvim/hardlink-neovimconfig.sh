#/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

pushd "$SCRIPT_DIR" >/dev/null

mkdir -p $HOME/.config/nvim
mkdir -p $HOME/.config/nvim/config
mkdir -p $HOME/.config/nvim/vim-plug
mkdir -p $HOME/.config/nvim/autoload
mkdir -p $HOME/.config/nvim/plugin-config
mkdir -p $HOME/.config/nvim/lua
# mkdir -p $HOME/.config/nvim/lua/lualine/components

ln -f *.* $HOME/.config/nvim
ln -f autoload/*.* $HOME/.config/nvim/autoload
ln -f config/*.* $HOME/.config/nvim/config
ln -f lua/*.* $HOME/.config/nvim/lua
# ln -f lua/lualine/components/*.* $HOME/.config/nvim/lua/lualine/components
ln -f plugin-config/*.* $HOME/.config/nvim/plugin-config
ln -f vim-plug/*.* $HOME/.config/nvim/vim-plug
popd >/dev/null
