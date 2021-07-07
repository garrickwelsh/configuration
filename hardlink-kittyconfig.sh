#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

pushd "$SCRIPT_DIR" >/dev/null
pushd dotconfig >/dev/null

mkdir -p $HOME/.config/kitty

ln -f kitty/* $HOME/.config/kitty

popd >/dev/null
popd >/dev/null
echo "Kitty Configuration linked"
