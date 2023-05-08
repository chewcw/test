#!/bin/bash

set -e

mkdir -p ~/.config/nvim
git clone https://github.com/chewcw/test.git ~/.config/nvim || true

apt-get update
apt-get install -y nodejs npm ripgrep build-essential xclip xsel
wget https://github.com/neovim/neovim/releases/download/v0.8.3/nvim-linux64.deb -O /tmp/nvim-linux64.deb
dpkg -i /tmp/nvim-linux64.deb

