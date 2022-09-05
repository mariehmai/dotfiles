#!/bin/sh

# After installing Xcode
#sudo xcodebuild -license # agree with license
#xcode-select --install # install command line tool

# Installs Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo export PATH=/opt/homebrew/bin:$PATH >> ~/.zshrc # Required for M1/M2 chip
brew tap Homebrew/bundle
brew bundle

# Configures git
sh git/git-config-install.sh

# Installs Oh My Zsh and plugins
# /!\ Requires `curl` and `git` (check ./BrewFile). Recommended with `iTerm2` terminal.
echo "Installing ohmyzsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Installing zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "Installing zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sed -i '' 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/g' ~/.zshrc
source ~/.zshrc

# Configures Android Studio
# Uncomment the following exports if you are installing Android Studio
#echo export ANDROID_HOME=$HOME/Library/Android/sdk >> ~/.zshrc
#echo export PATH=$PATH:$ANDROID_HOME/emulator >> ~/.zshrc
#echo export PATH=$PATH:$ANDROID_HOME/tools >> ~/.zshrc
#echo export PATH=$PATH:$ANDROID_HOME/tools/bin >> ~/.zshrc
#echo export PATH=$PATH:$ANDROID_HOME/platform-tools >> ~/.zshrc

# Configures asdf
#echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc

source ~/.zshrc

# Installs VSCode extensions
# /!\ Requires `visual-studio-code` (check ./BrewFile).
sh vscode/vscode-extensions-install.sh
