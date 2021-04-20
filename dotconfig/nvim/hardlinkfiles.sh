#/bin/bash

pushd `dirname $0`
ln -f *.* ~/.config/nvim
ln -f autoload/*.* ~/.config/nvim/autoload
ln -f config/*.* ~/.config/nvim/config
ln -f lua/*.* ~/.config/nvim/lua
ln -f plugin-config/*.* ~/.config/nvim/plugin-config
ln -f vim-plug/*.* ~/.config/nvim/vim-plug
popd
