#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

pushd "$SCRIPT_DIR" >/dev/null

ln -f dottmux.conf $HOME/.tmux.conf

popd >/dev/null
echo "Tmux configuration linked"
