## NEW MAC SETUP

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update # make sure we’re using the latest Homebrew
brew upgrade # upgrade any already-installed formulae

# install terminal utilities
brew install eza # modern replacement for ls
brew install powerlevel10k # zsh prompt theme
echo "source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc # configure p10k theme in zshrc

# install dev tools
brew install docker
brew install colima # lightweight docker runtime for mac without installing docker desktop
brew install uv # lightweight python version manager, python package installer
brew install oci-cli # oci os ns get - to verify if connected to oracle cloud tenancy
brew install gemini-cli
brew install git
brew install wget
brew install python

# install mac apps - use casks for mac applications
brew install --cask visual-studio-code
brew install --cask firefox
brew install --cask google-chrome
brew install --cask obsidian