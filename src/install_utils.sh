#!/bin/bash
# Check and install few utils packages

# Homebrew
if ! command -v brew &>/dev/null; then
  echo "Homebrew not found, installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew already installed."
fi

# zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "Oh My Zsh not found, installing..."
  /bin/bash -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "Oh My Zsh already installed."
fi
