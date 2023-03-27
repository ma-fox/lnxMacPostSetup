#!/bin/bash

if [[ $(uname -s) == "Darwin" ]]; then
  # macOS
  echo "Installing developer tools for macOS..."
  # Install Xcode Command Line Tools
  xcode-select --install
  # Install essential tools with Homebrew
  brew upgrade git || brew install git
  brew upgrade gh || brew install gh
  brew upgrade wget || brew install wget
  brew upgrade imagemagick || brew install imagemagick
  brew upgrade jq || brew install jq
  brew upgrade openssl || brew install openssl
  brew upgrade tree || brew install tree
  brew upgrade ncdu || brew install ncdu
  brew upgrade xz || brew install xz
  brew upgrade readline || brew install readline
  # Install Visual Studio Code
  brew install --cask visual-studio-code
else
  # Ubuntu or other Debian-based Linux distros
  echo "Installing developer tools for Linux..."

fi
