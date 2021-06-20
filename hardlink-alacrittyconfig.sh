#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

pushd "$SCRIPT_DIR" >/dev/null
pushd dotconfig >/dev/null

mkdir -p $HOME/.config/alacritty

ln -f alacritty/* $HOME/.config/alacritty

popd >/dev/null
popd >/dev/null
echo "Alacritty Configuration linked"
