#!/bin/sh

# after installing Xcode
sudo xcodebuild -license # agree with license
xcode-select --install # install command line tool

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

git config --global user.name 'Marie-Helene Mai'
git config --global user.email 'mai.mariehelene@gmail.com'

git config --global alias.co 'checkout'
git config --global alias.cob 'checkout -b'
git config --global alias.br 'branch'
git config --global alias.brm 'branch -m'
git config --global alias.brd 'branch -d'
git config --global alias.brD 'branch -D'
git config --global alias.cm 'commit -m'
git config --global alias.st 'status -sb'
git config --global alias.ll 'log --oneline'
git config --global alias.last 'log -1 HEAD --stat'
git config --global alias.rv 'remote -v'
git config --global alias.d 'diff'
git config --global alias.gl 'config --global -l'
git config --global alias.se '!git rev-list --all | xargs git grep -F'

# configure android studio
echo export ANDROID_HOME=$HOME/Library/Android/sdk >> ~/.zshrc
echo export PATH=$PATH:$ANDROID_HOME/emulator >> ~/.zshrc
echo export PATH=$PATH:$ANDROID_HOME/tools >> ~/.zshrc
echo export PATH=$PATH:$ANDROID_HOME/tools/bin >> ~/.zshrc
echo export PATH=$PATH:$ANDROID_HOME/platform-tools >> ~/.zshrc