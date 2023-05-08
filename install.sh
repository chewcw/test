#!/usr/bin/bash

set -e

apt-get update
apt-get install -y nodejs ripgrep build-essential
wget https://github.com/neovim/neovim/releases/download/v0.8.3/nvim-linux64.deb -O /tmp/nvim-linux64.deb
dpkg -i /tmp/nvim-linux64.deb

