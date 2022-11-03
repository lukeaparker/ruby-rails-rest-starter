#! /bin/bash

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install ruby 2.7
brew install ruby@2.7

# Add ruby 2.7 to path
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/lukeparker/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/lukeparker/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Restart terminal
exec zsh

# Install rails
gem install rails