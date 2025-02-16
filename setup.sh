#!/bin/bash

local_bin="$HOME/.local/bin"
prg_name="$(basename "$0")"

# Get current shell name and its rc file
shell_name="$(basename "$SHELL")"
rc_file="$HOME/.${shell_name}rc"

if [ -f "$local_bin/ncp" ];
then
    echo "${prg_name}: ncp tool already installed !"
    exit 0
fi

mkdir -p "$local_bin"
if [[ ":$PATH:" != *":${local_bin}:"* ]];
then
    echo "${prg_name}: WARNING: '${local_bin}' is not included in PATH env"
    echo "adding it to PATH env..."
    
    # Add path to shell rc file
    echo 'export PATH="$PATH:$HOME/.local/bin"' >> "$rc_file"; sleep 0.4
    echo "Added to $rc_file. Please restart your shell or run:"
    echo "source $rc_file"
fi
cp ./ncp "$local_bin"
echo "${prg_name}: ncp tool was installed successfully !"