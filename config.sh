#!/bin/sh

# after installing Xcode
sudo xcodebuild -license # agree with license
xcode-select --install # install command line tool

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew tap Homebrew/bundle
brew bundle

git config --global user.name 'Marie-Helene Mai'
git config --global user.email 'mai.mariehelene@gmail.com'

# configure android studio
#echo export ANDROID_HOME=$HOME/Library/Android/sdk >> ~/.zshrc
#echo export PATH=$PATH:$ANDROID_HOME/emulator >> ~/.zshrc
#echo export PATH=$PATH:$ANDROID_HOME/tools >> ~/.zshrc
#echo export PATH=$PATH:$ANDROID_HOME/tools/bin >> ~/.zshrc
#echo export PATH=$PATH:$ANDROID_HOME/platform-tools >> ~/.zshrc
