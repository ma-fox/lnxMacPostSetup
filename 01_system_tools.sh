#!/bin/bash

# Install system tools
if [[ $(uname -s) == "Darwin" ]]; then
  # macOS
  echo "Installing system tools for macOS..."
  brew install wget
  brew install gnupg
  brew install tree
else
  # Ubuntu or other Debian-based Linux distros
  echo "Installing system tools for Linux..."
  sudo apt-get install -y htop
  sudo apt-get install -y tree
  sudo apt-get install -y neofetch
fi
