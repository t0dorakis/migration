# show all hidden files
Defaults write com.apple.Finder AppleShowAllFiles true


# brew install
# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
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
brew install code-cli
brew install --cask google-cloud-sdk
brew install --cask ImageMagick
brew install awscli

#fix nvm not found issue
source $(brew --prefix nvm)/nvm.sh

# zsh bash script
# Migrate zsh config files to home directory

cp .zprofile ~/
cp .zshrc ~/
source ~/.zshrc

echo "ZSH config files migrated to home directory"

# correct path for visual studio code CLI
code version use stable --install-dir "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code"

# install node
nvm install node

# route code cli to visual studio code
code version use oss --install-dir /Applications/Visual\ Studio\ Code.app

# set username
git config --global user.name t0dorakis
git config --global user.email theo.hillmann@gmail.com