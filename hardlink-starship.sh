#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

mkdir -p $HOME/.config
pushd $SCRIPT_DIR >/dev/null
ln -f dotconfig/starship.toml $HOME/.config
popd >/dev/null
echo "Linked startship configuration"
