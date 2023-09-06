# zsh bash script
# Migrate zsh config files to home directory

cp .zprofile ~/
cp .zshrc ~/
source ~/.zshrc

echo "ZSH config files migrated to home directory"

# brew install
# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install brew packages
brew install --cask 1password
brew install --cask warp
brew install --cask arc
brew install nvm
brew install gh
brew install --cask visual-studio-code
brew install mysql
brew install --cask notion
brew install --cask slack
brew install pyenv
brew install pyenv-virtualenv