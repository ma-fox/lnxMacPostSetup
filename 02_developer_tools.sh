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
  # Install Visual Studio Code
  wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
  sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
  sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
  rm -f packages.microsoft.gpg
  sudo apt-get update
  sudo apt-get install -y code
  # Install useful VS Code extensions
  code --install-extension emmanuelbeziat.vscode-great-icons
  code --install-extension ms-python.python
  code --install-extension KevinRose.vsc-python-indent
  code --install-extension ms-python.vscode-pylance
  code --install-extension ms-toolsai.jupyter
fi
