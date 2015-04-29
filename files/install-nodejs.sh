#!/bin/bash

export NODENV_ROOT="/opt/nodenv"
export PATH="$NODENV_ROOT/bin:$PATH"

if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi

export PYENV_VERSION=system
(nodenv versions | grep "$1") || nodenv install "$1"
