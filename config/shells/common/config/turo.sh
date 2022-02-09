#!/bin/bash
# shellcheck shell=sh

export TURO_DIR="${HOME}/.turo"
export TURO_BIN_DIR="${HOME}/.turo/bin"
export TURO_PROFILE_DIR="${HOME}/.turo/profile"

# if the directory $TURO_PROFILE_DIR exists, list the files in it
if [ -d "$TURO_PROFILE_DIR" ]; then
    # for all files in $TURO_PROFILE_DIR source the contents
    for file in "$TURO_PROFILE_DIR"/*; do
        # shellcheck disable=SC1090
        source "$file"
    done
fi

export PATH="$TURO_BIN_DIR:$PATH"UR