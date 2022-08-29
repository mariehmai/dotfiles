#!/bin/sh

# after installing Xcode
#sudo xcodebuild -license # agree with license
#xcode-select --install # install command line tool

# installs Homebrew
#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#brew tap Homebrew/bundle
#brew bundle

# copies a default .gitconfig file with some handy aliases
# /!\ This will override any existing .gitconfig located at ~/.
cp git/.gitconfig ~/.gitconfig
git config --global user.name 'Marie-Helene Mai'
git config --global user.email 'mai.mariehelene@gmail.com'

# installs Oh My Zsh and plugins
# /!\ Requires `curl` and `git` (check ./BrewFile).
# /!\ Recommended with `iTerm2` terminal.
echo "Installing ohmyzsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Installing zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "Installing zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# configures android studio
#echo export ANDROID_HOME=$HOME/Library/Android/sdk >> ~/.zshrc
#echo export PATH=$PATH:$ANDROID_HOME/emulator >> ~/.zshrc
#echo export PATH=$PATH:$ANDROID_HOME/tools >> ~/.zshrc
#echo export PATH=$PATH:$ANDROID_HOME/tools/bin >> ~/.zshrc
#echo export PATH=$PATH:$ANDROID_HOME/platform-tools >> ~/.zshrc

# installs VSCode extensions
# /!\ Requires `visual-studio-code` (check ./BrewFile).
#sh vscode/vscode-extensions-install.sh
