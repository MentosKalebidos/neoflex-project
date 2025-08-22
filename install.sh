#!/bin/bash

set -e

echo "Updating package list..."
sudo apt-get update

echo "Installing dependencies..."
sudo apt-get install -y \
  curl \
  libarchive-tools \
  python3 \
  python3-pip \
  libglib2.0-0 \
  libgl1 \
  libxkbcommon0 \
  libegl1 \
  libfontconfig1 \
  libdbus-1-3 \
  bash

echo "✅ Installation completed successfully."

