#!/bin/bash

# Install Oh My Zsh
echo "Installing Oh My Zsh..."
if [[ $(uname -s) == "Darwin" ]]; then
  # macOS
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  # Ubuntu or other Debian-based Linux distros
  sudo apt-get install -y zsh
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  # Change default shell to zsh
  chsh -s $(which zsh)
fi
