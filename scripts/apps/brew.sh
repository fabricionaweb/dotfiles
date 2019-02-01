#!/bin/sh

# Homebrew (https://brew.sh/) :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo "Setting up Homebrew"
if test ! $(which brew); then
  echo "Installing homebrew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Homebrew allready instaled"
  echo "Updating Homebrew"
  brew update
fi


# Brew apps :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo "Installing apps with brew"
brew=(
  "nvm"
  "thefuck"
  "fx"
  "git"
)

for app in "${brew[@]}"; do
  echo "Installing $app"
  brew install $app
done

# Cask apps :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo "Installing apps with brew cask"
brew cask

cask=(
  "docker"
  "google-chrome"
  "spotify"
  "slack"
  "skype"
  "iterm2"
  "visual-studio-code"
  "gitkraken"
)

for app in "${cask[@]}"; do
  echo "Installing $app"
  brew cask install $app
done