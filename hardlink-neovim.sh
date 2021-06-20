#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

$SCRIPT_DIR/dotconfig/nvim/hardlink-neovimconfig.sh
echo "Neovim configuration now linked."
