#!/bin/sh

# After installing Xcode
sudo xcodebuild -license # agree with license
xcode-select --install # install command line tool

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
